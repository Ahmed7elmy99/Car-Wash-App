import 'package:html/parser.dart' as html_parser;

// Created by:  helmy
// Created at date: 28/10/2024
// This widget for remove html tags
String processHtmlText(String htmlString) {
  var document = html_parser.parse(htmlString);
  String text = document.body?.text ?? '';

  text = text.replaceAll(RegExp(r'<br\s*/?>', caseSensitive: false), '. ');
  text = text.replaceAll(RegExp(r'&nbsp;', caseSensitive: false), ' ');

  return text;
}
