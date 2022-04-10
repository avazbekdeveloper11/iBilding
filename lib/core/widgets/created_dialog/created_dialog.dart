import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/components/my_deco.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';

class MyDialog {
  static dialog(context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: ConstColor.dark,
        title: Center(
          child: Text(
            "What do you want to create?",
            style: TextStyle(
              color: ConstColor.white,
              fontSize: getWidht(16),
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        content: SizedBox(
          height: getHeight(130),
          child: Column(
            children: [
              createButton(
                context,
                text: "Contract",
                svgIcon: Constant.bigPaper,
                route: "/contract_add",
              ).op(top: 10, bottom: 12),
              createButton(
                context,
                text: "Invoice",
                svgIcon: Constant.inVoice,
                route: '/invoice_add',
              ),
            ],
          ),
        ),
      ),
    );
  }

  static InkWell createButton(context,
      {required String text, required svgIcon, required String route}) {
    return InkWell(
      onTap: () {
        Navigator.popAndPushNamed(context, route);
      },
      child: Container(
        height: getHeight(46),
        decoration: MyDeco.radiusAndColor(
          color: ConstColor.createdButton,
          r: 4,
        ),
        child: Row(
          children: [
            SvgPicture.asset(svgIcon).op(left: 16, right: 12),
            Text(
              text,
              style: TextStyle(
                color: ConstColor.white,
                fontSize: getWidht(16),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
