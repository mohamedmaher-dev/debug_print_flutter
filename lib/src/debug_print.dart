import 'package:flutter/foundation.dart';

const String _base = "\u001b[";
const String _baseBack = "\u001b[0m";
const String _empty = '';

abstract class DebugPrintV2 {
  static void _print(
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
          '$_base$textWeightCode$textItalicCode$textUnderlineCode$textDoneCode$textAlphaAnimCode$textColorCode$backColorCode$msgCode$_baseBack';
      print(printCode);
    }
  }

  static void normal(Object msg) => _print(msg);
  static void success(Object msg) => _print(msg, textColor: PrintColor.green);
  static void error(Object msg) => _print(msg, textColor: PrintColor.red);
  static void warning(Object msg) => _print(msg, textColor: PrintColor.yellow);
  static void black(Object msg) => _print(msg, textColor: PrintColor.black);
  static void blue(Object msg) => _print(msg, textColor: PrintColor.blue);
  static void white(Object msg) => _print(msg, textColor: PrintColor.white);
  static void magenta(Object msg) => _print(msg, textColor: PrintColor.magenta);
  static void cyan(Object msg) => _print(msg, textColor: PrintColor.cyan);
  static void successBack(Object msg) =>
      _print(msg, textColor: PrintColor.black, backColor: PrintColor.green);
  static void warningBack(Object msg) =>
      _print(msg, textColor: PrintColor.black, backColor: PrintColor.yellow);
  static void errorBack(Object msg) =>
      _print(msg, textColor: PrintColor.black, backColor: PrintColor.red);
  static void custom(
    Object msg, {
    PrintColor? textColor,
    PrintColor? backColor,
    TextItalic? textItalic,
    TextUnderline? textUnderline,
    TextDone? textDone,
    TextAlphaAnim? textAlphaAnim,
    TextWeight? textWeight,
  }) =>
      _print(
        msg,
        backColor: backColor,
        textAlphaAnim: textAlphaAnim,
        textColor: textColor,
        textDone: textDone,
        textItalic: textItalic,
        textUnderline: textUnderline,
        textWeight: textWeight,
      );
}

enum TextWeight {
  normal(value: "0;"),
  bold(value: "1;");

  final String value;
  const TextWeight({required this.value});
}

enum TextAlphaAnim {
  semiOpacity(value: "2;"),
  hide(value: "8;"),
  slowAnim(value: "5;"),
  fastAnim(value: "6;");

  final String value;
  const TextAlphaAnim({required this.value});
}

enum TextItalic {
  none(value: _empty),
  italic(value: "3;");

  final String value;
  const TextItalic({required this.value});
}

enum TextUnderline {
  none(value: _empty),
  underline(value: "4;");

  final String value;
  const TextUnderline({required this.value});
}

enum TextDone {
  none(value: _empty),
  done(value: "9;");

  final String value;
  const TextDone({required this.value});
}

enum PrintColor {
  black(value: "0;"),
  red(value: "1;"),
  green(value: "2;"),
  yellow(value: "3;"),
  blue(value: "4;"),
  magenta(value: "5;"),
  cyan(value: "6;"),
  white(value: "7;");

  final String value;
  const PrintColor({required this.value});
}
