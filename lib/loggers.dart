import 'dart:developer';

enum TypeLogger { error, message }

class Loggers {
  static _show(Object? object,
      {StackTrace? stacktrace, TypeLogger? typeLogger = TypeLogger.message}) {
    switch (typeLogger) {
      case TypeLogger.error:
        log('🚨 ${object?.toString() ?? 'null'} 🚨');
        log('🚨 ${stacktrace?.toString() ?? 'null'} 🚨');
        break;
      case TypeLogger.message:
        log('🚧 ${object?.toString() ?? 'null'} 🚧');
        break;
      default:
        log('🚧 ${object?.toString() ?? 'null'} 🚧');
        break;
    }
  }

  static showError(
    Object? object,
    StackTrace? stacktrace,
  ) =>
      _show(object, stacktrace: stacktrace, typeLogger: TypeLogger.error);

  static showMessage(
    Object? object,
  ) =>
      _show(object, typeLogger: TypeLogger.message);
}
