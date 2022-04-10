import 'package:flutter/painting.dart';
import 'package:i_bilding/core/colors/colors.dart';

class MyDeco {
  static BoxDecoration radiusAndColor(
      {required Color color, required double r}) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(r),
    );
  }

  static BoxDecoration radiusColor() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      border: Border.all(
        color: ConstColor.greyText,
      ),
    );
  }
}
