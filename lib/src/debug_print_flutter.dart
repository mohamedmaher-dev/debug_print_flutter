import 'package:flutter/foundation.dart';
part 'debug_print_props.dart';
part 'debug_print_ext.dart';

const String _baseFront = "\u001b[";
const String _baseBack = "\u001b[0m";
const String _empty = '';

class DebugPrint {
  const DebugPrint();
  void custom(
    Object msg, {
    PrintColor? textColor,
    PrintColor? backColor,
    TextItalic? textItalic,
    TextUnderline? textUnderline,
    TextDone? textDone,
    TextAlphaAnim? textAlphaAnim,
    TextWeight? textWeight,
  }) {
    if (kDebugMode) {
      String msgCode = 'm$msg';
      String textItalicCode = textItalic == null ? _empty : textItalic.value;
      String textUnderlineCode =
          textUnderline == null ? _empty : textUnderline.value;
      String textDoneCode = textDone == null ? _empty : textDone.value;
      String textAlphaAnimCode =
          textAlphaAnim == null ? _empty : textAlphaAnim.value;
      String textWeightCode = textWeight == null ? _empty : textWeight.value;
      String textColorCode = textColor == null ? _empty : "3${textColor.value}";
      String backColorCode = backColor == null ? _empty : "4${backColor.value}";
      String printCode =
          '$_baseFront$textWeightCode$textItalicCode$textUnderlineCode$textDoneCode$textAlphaAnimCode$textColorCode$backColorCode$msgCode$_baseBack';
      print(printCode);
    }
  }
}
