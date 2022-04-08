import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          selectLanguageButton(context),
        ],
      ).sp(h: 16),
    );
  }

  InkWell selectLanguageButton(BuildContext context) {
    return InkWell(
      child: Container(
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
      ).op(bottom: 4),
      onTap: () {
        changeLanguagesDialog(context);
      },
    );
  }

  Future<dynamic> changeLanguagesDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              "Choose a language",
              style: TextStyle(
                color: ConstColor.whiteBold,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          backgroundColor: ConstColor.dark,
          content: SizedBox(
            height: getHeight(200),
            child: Column(
              children: [
                SizedBox(
                  height: getHeight(160),
                  width: double.infinity,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(0),
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          print("object");
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: getWidht(30),
                              width: getWidht(30),
                              child: Image.asset(Constant.usa),
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                            ).op(right: 12),
                            Text(
                              "English (USA)",
                              style: TextStyle(
                                color: ConstColor.whiteBold,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            SvgPicture.asset(Constant.activRadio)
                          ],
                        ),
                      ).op(bottom: 24);
                    },
                    itemCount: 3,
                  ).op(bottom: 4),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
