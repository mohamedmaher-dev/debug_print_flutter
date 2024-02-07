import 'package:debug_print_flutter/src/debug_print_flutter.dart';

void main() {
  DebugPrint myPrint = const DebugPrint();
  myPrint.custom(
    " Mohamed ",
    backColor: PrintColor.green,
    textAlphaAnim: TextAlphaAnim.fastAnim,
    textWeight: TextWeight.bold,
    textColor: PrintColor.black,
  );
}
