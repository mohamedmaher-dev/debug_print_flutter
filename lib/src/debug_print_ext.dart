part of 'debug_print_flutter.dart';

extension DebugPrintExt on DebugPrint {
  void success(Object msg) => custom(msg, textColor: PrintColor.green);
  void error(Object msg) => custom(msg, textColor: PrintColor.red);
  void warning(Object msg) => custom(msg, textColor: PrintColor.yellow);
  void black(Object msg) => custom(msg, textColor: PrintColor.black);
  void blue(Object msg) => custom(msg, textColor: PrintColor.blue);
  void white(Object msg) => custom(msg, textColor: PrintColor.white);
  void magenta(Object msg) => custom(msg, textColor: PrintColor.magenta);
  void cyan(Object msg) => custom(msg, textColor: PrintColor.cyan);
  void successBack(Object msg) =>
      custom(msg, textColor: PrintColor.black, backColor: PrintColor.green);
  void warningBack(Object msg) =>
      custom(msg, textColor: PrintColor.black, backColor: PrintColor.yellow);
  void errorBack(Object msg) =>
      custom(msg, textColor: PrintColor.black, backColor: PrintColor.red);
}
