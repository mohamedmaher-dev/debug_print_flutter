part of 'debug_print.dart';

class _DebugPrintExt {
  void normal(Object msg) => DebugPrint.print(msg);
  void success(Object msg) =>
      DebugPrint.print(msg, textColor: PrintColor.green);
  void error(Object msg) => DebugPrint.print(msg, textColor: PrintColor.red);
  void warning(Object msg) =>
      DebugPrint.print(msg, textColor: PrintColor.yellow);
  void black(Object msg) => DebugPrint.print(msg, textColor: PrintColor.black);
  void blue(Object msg) => DebugPrint.print(msg, textColor: PrintColor.blue);
  void white(Object msg) => DebugPrint.print(msg, textColor: PrintColor.white);
  void magenta(Object msg) =>
      DebugPrint.print(msg, textColor: PrintColor.magenta);
  void cyan(Object msg) => DebugPrint.print(msg, textColor: PrintColor.cyan);
  void successBack(Object msg) => DebugPrint.print(msg,
      textColor: PrintColor.black, backColor: PrintColor.green);
  void warningBack(Object msg) => DebugPrint.print(msg,
      textColor: PrintColor.black, backColor: PrintColor.yellow);
  void errorBack(Object msg) => DebugPrint.print(msg,
      textColor: PrintColor.black, backColor: PrintColor.red);
}
