import 'package:flutter/material.dart';

class Style {
  static final baseTextStyle = const TextStyle(
      fontFamily: 'OpenSans'
  );
  static final smallTextStyle = commonTextStyle.copyWith(
    fontSize: 9.0,
  );
  static final commonTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 16.0,
      fontWeight: FontWeight.w400
  );
  static final titleTextStyle = baseTextStyle.copyWith(
      color: Colors.white,
      fontSize: 22.0,
      fontWeight: FontWeight.w700
  );
  static final headerTextStyle = baseTextStyle.copyWith(
      color: Colors.black,
      fontSize: 25.0,
      fontWeight: FontWeight.w700
  );
}