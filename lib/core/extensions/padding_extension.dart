import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:i_bilding/core/constants/size_config.dart';

extension WidgetExtension on Widget {
  //  PADDING SYMETRIC
  Widget sp({double h = 0.0, double v = 0.0}) => Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getWidht(h), vertical: getHeight(v)),
        child: this,
      );

  //  PADDING ALL
  Widget all({double all = 0.0}) => Padding(
        padding: EdgeInsets.all(getWidht(all)),
        child: this,
      );

  //  PADDING ONLY
  Widget op({
    double right = 0.0,
    double left = 0.0,
    double top = 0.0,
    double bottom = 0.0,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          right: getWidht(right),
          left: getWidht(left),
          top: getHeight(top),
          bottom: getHeight(bottom),
        ),
        child: this,
      );
}
