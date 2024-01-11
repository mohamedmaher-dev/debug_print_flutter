part of 'debug_print.dart';

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
