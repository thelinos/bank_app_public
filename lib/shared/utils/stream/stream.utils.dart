import "dart:async";
import "dart:math" as math;

import "package:bank_app/shared/utils/stream/model/retry_behavior.model.dart"
    show RetryBehavior;
import "package:rxdart/rxdart.dart";

/// Function type for retry condition predicates.
typedef RetryPredicate = bool Function(Exception exception);

/// Function type for retry attempt callbacks.
typedef RetryCallback = void Function(
  Exception exception, {
  required int attempt,
});

/// Utility class providing advanced retry mechanisms for Dart streams.
abstract final class StreamUtils {
  static final _rand = math.Random();

  /// Retries a stream by creating a fresh source for each subscription attempt.
  static Stream<T> retryFrom<T>(
    Stream<T> Function() sourceStream, {
    required RetryCallback onRetry,
    required RetryPredicate retryIf,
    RetryBehavior retryBehavior = const RetryBehavior(),
  }) {
    var currentAttempts = 0;
    final delay =
        retryBehavior.onDelayCalculated ??
        (attempt) => _calculateDelay(
          attempt,
          delayFactor: retryBehavior.delayFactor,
          maxDelay: retryBehavior.maxDelay,
          randomizationFactor: retryBehavior.randomizationFactor,
        );

    return RetryWhenStream<T>(
      () => sourceStream().doOnData((_) => currentAttempts = 0),
      (exception, stackTrace) {
        if (exception is! Exception ||
            currentAttempts >= retryBehavior.maxAttempts ||
            !retryIf(exception)) {
          return Stream<T>.error(exception, stackTrace);
        }

        currentAttempts += 1;
        onRetry(exception, attempt: currentAttempts);

        return Rx.timer<void>(null, delay(currentAttempts));
      },
    );
  }

  /// Creates a new stream that automatically retries on failure based on specified conditions.
  ///
  /// Uses exponential backoff with jitter to handle failures gracefully.
  ///
  /// Parameters:
  ///   [sourceStream]: The original stream to apply retry logic to.
  ///   [retryIf]: Predicate to determine if a particular exception should trigger a retry.
  ///   [onRetry]: Callback function called when a retry attempt is made.
  ///    [retryBehavior]: Optional [RetryBehavior] to configure retry behavior.
  ///
  /// Returns a new stream that will retry the original stream based on the provided conditions.
  static Stream<T> retry<T>(
    /// The original stream to apply retry logic to.
    Stream<T> sourceStream, {

    /// Predicate to determine if a particular exception should trigger a retry.
    required RetryCallback onRetry,

    /// Callback function called when a retry attempt is made.
    required RetryPredicate retryIf,

    /// Optional [RetryBehavior] to configure retry behavior.
    RetryBehavior retryBehavior = const RetryBehavior(),
  }) {
    return RetryWhenStream(() => sourceStream, (exception, stackTrace) {
      if (exception is! Exception) {
        return Stream.error(exception, stackTrace);
      }

      var currentAttempts = 0;
      final delay =
          retryBehavior.onDelayCalculated ??
          (attempt) => _calculateDelay(
            attempt,
            delayFactor: retryBehavior.delayFactor,
            maxDelay: retryBehavior.maxDelay,
            randomizationFactor: retryBehavior.randomizationFactor,
          );

      return Stream.value(null).flatMap((_) {
        currentAttempts += 1;

        if (currentAttempts >= retryBehavior.maxAttempts ||
            !retryIf(exception)) {
          return Stream.error(exception, stackTrace);
        }

        onRetry(exception, attempt: currentAttempts);

        return Rx.timer(null, delay(currentAttempts));
      });
    });
  }

  /// Creates a StreamTransformer that can be used with the `transform` method to apply retry logic.
  ///
  /// This transformer will retry the original stream based on the provided conditions.
  ///
  /// Parameters:
  ///   [retryIf]: Predicate to determine if a particular exception should trigger a retry.
  ///   [onRetry]: Callback function called when a retry attempt is made.
  ///   [wrappedParameters]: Optional [RetryBehavior] to configure retry behavior.
  ///
  /// Returns a StreamTransformer that applies retry logic to the original stream.
  static StreamTransformer<T, T> retryTransformer<T>(
    /// Predicate to determine if a particular exception should trigger a retry.
    RetryPredicate retryIf, {

    /// Callback function called when a retry attempt is made.
    required RetryCallback onRetry,

    /// Optional [RetryBehavior] to configure retry behavior.
    RetryBehavior retryBehavior = const RetryBehavior(),
  }) => StreamTransformer<T, T>.fromBind(
    (stream) => retry(
      stream,
      onRetry: onRetry,
      retryIf: retryIf,
      retryBehavior: retryBehavior,
    ),
  );

  /// Calculates the delay duration for a retry attempt using exponential backoff with jitter.
  ///
  /// Parameters:
  ///   [attempt]: The current attempt number.
  ///   [delayFactor]: The base delay duration for retry attempts.
  ///   [maxDelay]: The maximum delay duration.
  ///   [randomizationFactor]: The factor for randomization of the delay.
  ///
  /// Returns the calculated delay duration.
  static Duration _calculateDelay(
    int attempt, {
    required Duration delayFactor,
    required Duration maxDelay,
    required double randomizationFactor,
  }) {
    const powerValue = 2.0;
    if (attempt <= 0) return Duration.zero;

    final randomizationValue =
        randomizationFactor * (_rand.nextDouble() * powerValue - 1) + 1;

    final exp = math.min(attempt, 31);
    final delay = delayFactor * math.pow(powerValue, exp) * randomizationValue;

    return delay < maxDelay ? delay : maxDelay;
  }
}
