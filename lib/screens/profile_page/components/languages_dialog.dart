import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';

class LanguagesDialog {
  static languages(BuildContext context) {
    showDialog(
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
            height: getHeight(215),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    alertButton(
                      text: "Cancel",
                      ontap: () => Navigator.pop(context),
                    ),
                    alertButton(text: "Done")
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static ElevatedButton alertButton({required String text, ontap}) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: ConstColor.lightGren,
        fixedSize: Size(
          getWidht(110),
          getHeight(37),
        ),
      ),
      child: Text(text),
      onPressed: ontap ?? () {},
    );
  }
}
