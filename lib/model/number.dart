
import 'package:flutter/cupertino.dart';

class Number {
  final String? image;
  final String sound;
  final String jpName;
  final String enName;

  const Number({
    @required this.image,
    required this.sound,
    required this.enName,
    required this.jpName
  });
}