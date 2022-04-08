import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/components/my_deco.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';
import 'package:i_bilding/screens/profile_page/components/app_bar_profile.dart';
import 'package:i_bilding/screens/profile_page/components/languages_dialog.dart';
import 'package:i_bilding/screens/profile_page/components/select_language_cont.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBar().build(context),
      body: Column(
        children: [
          profileCard().op(top: 20, bottom: 11),
          InkWell(
            child: const SelectLanguageContainer(),
            onTap: () {
              LanguagesDialog.languages(context);
            },
          ),
        ],
      ).sp(h: 16),
    );
  }

  Container profileCard() {
    return Container(
      height: getHeight(188),
      width: double.infinity,
      decoration: MyDeco.radiusAndColor(
        color: ConstColor.dark,
        r: 6,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 23.0,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(Constant.avatar),
                      ).op(right: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Otabek Abdusamatov",
                            style: TextStyle(
                              color: ConstColor.lightGren,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ).op(bottom: 6),
                          Text(
                            "Graphic designer • IQ Education",
                            style: TextStyle(
                              fontSize: 12,
                              color: ConstColor.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  textAndData(ld: "Date of birth", tr: "16.09.2001")
                      .op(top: 20),
                  textAndData(ld: "Phone number", tr: "+998 97 721 06 88")
                      .sp(v: 12),
                  textAndData(
                    ld: "E-mail",
                    tr: "predatorhunter041@gmail.com",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row textAndData({required String ld, required String tr}) {
    return Row(
      children: [
        Text(
          ld + " : ",
          style: TextStyle(
            color: ConstColor.whiteBold,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          tr,
          style: TextStyle(
            color: ConstColor.greyText,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
