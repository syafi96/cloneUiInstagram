import 'package:flutter/services.dart';

class MaxLinesTextInputFormatter extends TextInputFormatter {
  final int maxLines;
  final int maxLength;

  MaxLinesTextInputFormatter({required this.maxLines, required this.maxLength});
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final newLineCount = '\n'.allMatches(newValue.text).length + 1;

    if (newLineCount > maxLines || newValue.text.length > maxLength) {
      return oldValue;
    }
    return newValue;
  }
}
