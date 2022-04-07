import 'package:flutter/painting.dart';

class MyDeco {
  static BoxDecoration radiusAndColor(
      {required Color color, required double r}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(r),
    );
  }
}
