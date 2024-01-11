import 'package:debug_print_flutter/src/debug_print.dart';

void main() {
  DebugPrint.extensions.success(DebugPrint.extensions.hashCode);
  DebugPrint.extensions.warning(DebugPrint.extensions.hashCode);
  DebugPrint.extensions.error(DebugPrint.extensions.hashCode);
}
