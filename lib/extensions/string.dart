import 'dart:core';
import 'dart:convert';
import 'package:xml2json/xml2json.dart';

extension StringX on String {
  String trimStringLeft(String str) {
    return (startsWith(str)) ? substring(str.length) : this;
  }

  String trimStringRight(String str) {
    return (endsWith(str)) ? substring(0, length - str.length) : this;
  }

  Map<String, dynamic> fromXmlToJson() {
    final xmlTransformer = Xml2Json();
    xmlTransformer.parse(this);
    return json.decode(xmlTransformer.toParker()).values.first;
  }
}
