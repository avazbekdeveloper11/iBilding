import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/components/my_deco.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';

class SelectLanguageContainer extends StatelessWidget {
  const SelectLanguageContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(44),
      width: double.infinity,
      decoration: MyDeco.radiusAndColor(
        color: ConstColor.dark,
        r: 6,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "English (USA)",
            style: TextStyle(
              color: ConstColor.whiteBold,
              fontWeight: FontWeight.w500,
            ),
          ),
          Container(
            height: getWidht(30),
            width: getWidht(30),
            child: Image.asset(Constant.usa),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
          ),
        ],
      ).sp(h: 20),
    );
  }
}
