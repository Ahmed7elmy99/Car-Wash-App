import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class CustomTruncationWidgetFactory extends WidgetFactory {
  final int maxLines;

  CustomTruncationWidgetFactory({required this.maxLines});

  @override
  Widget? buildText(BuildTree tree, InheritedProperties properties, InlineSpan span) {
    // Convert the InlineSpan to plain text for rendering
    final plainText = span.toPlainText(); // Extract plain text from the span
    return Text(
      plainText,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: properties.style,
    );
  }
}
