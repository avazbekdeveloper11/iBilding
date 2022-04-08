import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/constants/size_config.dart';

class chackboxTile extends StatelessWidget {
  bool isCheck;
  String text;
  chackboxTile({
    Key? key,
    required this.isCheck,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getWidht(163),
      child: Row(
        children: [
          Checkbox(
            value: isCheck,
            activeColor: ConstColor.white,
            checkColor: ConstColor.background,
            side: BorderSide(
                color: isCheck ? ConstColor.white : ConstColor.greyText,
                width: 1.5),
            onChanged: (v) {},
          ),
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: isCheck ? ConstColor.white : ConstColor.greyText,
            ),
          )
        ],
      ),
    );
  }
}
