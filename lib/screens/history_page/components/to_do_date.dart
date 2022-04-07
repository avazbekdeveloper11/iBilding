import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/components/my_deco.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';

class ToDoData extends StatelessWidget {
  const ToDoData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Date",
            style: TextStyle(
              color: ConstColor.greyText,
              fontWeight: FontWeight.w700,
            ),
          ).op(top: 20, left: 16, bottom: 16),
        Row(
            children: [
              selectDataContainer(width: 116, height: 37),
              SvgPicture.asset(Constant.lineHorizontal).sp(h: 12),
              selectDataContainer(width: 116, height: 37,text: "To"),
            ],
          ).op(left: 16),
        ],
      ),
    );
  }

  Container selectDataContainer({
    required double width,
    required double height,
    String? text,
  }) {
    return Container(
      height: getHeight(height),
      width: getWidht(width),
      decoration: MyDeco.radiusAndColor(
        color: ConstColor.dark,
        r: 5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            text ?? "From",
            style: TextStyle(
              color: ConstColor.greyText,
            ),
          ),
          SvgPicture.asset(Constant.calendar)
        ],
      ),
    );
  }
}
