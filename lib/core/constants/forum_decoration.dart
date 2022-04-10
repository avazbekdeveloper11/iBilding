import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/constants/size_config.dart';

class FormDeco {
  static deco() {
    return InputDecoration(
      hintText: "",
      contentPadding: EdgeInsets.only(bottom: getHeight(5), left: getWidht(10)),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: ConstColor.greyText, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: ConstColor.greyText, width: 1),
      ),
    );
  }
}
