import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/components/my_deco.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';
import 'package:i_bilding/screens/profile_page/components/app_bar_profile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBar().build(context),
      body: Column(
        children: [
          Container(
            height: getHeight(188),
            width: double.infinity,
            decoration: MyDeco.radiusAndColor(
              color: ConstColor.dark,
              r: 6,
            ),
          ).op(top: 20, bottom: 11),
          Container(
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
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage(Constant.usa),
                ),
              ],
            ).sp(h: 20),
          ).op(bottom: 4),
        ],
      ).sp(h: 16),
    );
  }
}
