import 'dart:core';
import 'string.dart';

extension MapX on Map<String, dynamic> {
  String toQueryString() {
    return (isNotEmpty)
        ? '?${toString().split(',').map((e) => e.trim()).join('&').split(':').map((e) => e.trim()).join('=').trimStringLeft('{').trimStringRight('}')}'
        : '';
  }
}
