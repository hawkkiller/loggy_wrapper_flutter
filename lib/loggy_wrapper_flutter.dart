library loggy_wrapper_flutter;

import 'package:loggy/loggy.dart';

const logger = Logger._();

class Logger with UiLoggy {
  const Logger._();

  /// debug
  void d(Object? o) {
    loggy.debug(o.toString());
  }

  /// info
  void i(Object? o) {
    loggy.info(o.toString());
  }

  /// warning
  void w(Object? o, [List<Object> list = const []]) {
    loggy.warning('$o ${list.join(' ')}');
  }

  /// error
  void e(Object? o, [Object? error, StackTrace? trace]) {
    loggy.error(o.toString(), error, trace);
  }
}

