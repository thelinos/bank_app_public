import "package:logger/logger.dart";

abstract final class BankLogger {
  static Logger get _logger {
    return Logger(printer: PrettyPrinter(methodCount: 0));
  }

  static void trace(
    Object message, {
    Object? error,
    StackTrace? stackTrace,
    DateTime? time,
  }) {
    _logger.t(message, time: time, error: error, stackTrace: stackTrace);
  }

  static void debug(
    Object message, {
    Object? error,
    StackTrace? stackTrace,
    DateTime? time,
  }) {
    _logger.d(message, time: time, error: error, stackTrace: stackTrace);
  }

  static void info(
    Object message, {
    Object? error,
    StackTrace? stackTrace,
    DateTime? time,
  }) {
    _logger.i(message, time: time, error: error, stackTrace: stackTrace);
  }

  static void warning(
    Object message, {
    Object? error,
    StackTrace? stackTrace,
    DateTime? time,
  }) {
    _logger.w(message, time: time, error: error, stackTrace: stackTrace);
  }

  static void error(
    Object message, {
    Object? error,
    StackTrace? stackTrace,
    DateTime? time,
  }) {
    _logger.e(message, time: time, error: error, stackTrace: stackTrace);
  }

  static void fatal(
    Object message, {
    Object? error,
    StackTrace? stackTrace,
    DateTime? time,
  }) {
    _logger.f(message, time: time, error: error, stackTrace: stackTrace);
  }
}
