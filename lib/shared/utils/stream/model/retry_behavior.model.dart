import "package:freezed_annotation/freezed_annotation.dart";

part "retry_behavior.model.freezed.dart";

/// Function type for custom delay calculators.
typedef DelayCalculator = Duration Function(int attempt);

@freezed
sealed class RetryBehavior with _$RetryBehavior {
  const factory({
    /// The base delay duration for retry attempts.
    @Default(Duration(milliseconds: 200)) Duration delayFactor,

    /// Maximum number of retry attempts.
    @Default(8) int maxAttempts,

    /// Maximum delay between retry attempts.
    @Default(Duration(seconds: 30)) Duration maxDelay,

    /// Optional custom function to calculate delay between retries.
    DelayCalculator? onDelayCalculated,

    /// Jitter factor for delay randomization.
    @Default(0.25) double randomizationFactor,
  }) = _RetryBehavior;
}
