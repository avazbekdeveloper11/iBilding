import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/components/my_deco.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/forum_decoration.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';
import 'package:i_bilding/core/widgets/app_bar_widget/title_and_leading.dart';

class CreateInvoice extends StatelessWidget {
  const CreateInvoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LeadingAndTitleAppBar(title: "Contracts").build(context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Xizmat nomi",
            style: Constant.forumTitleStyle,
          ).op(top: 20, bottom: 6),
          SizedBox(
            height: getHeight(44),
            child: TextFormField(
              decoration: FormDeco.deco(),
            ),
          ),
          Text(
            "Invoice summasi",
            style: Constant.forumTitleStyle,
          ).op(top: 16, bottom: 6),
          SizedBox(
            height: getHeight(44),
            child: TextFormField(
              decoration: FormDeco.deco(),
            ),
          ),
          Text("Status of the invoice", style: Constant.forumTitleStyle)
              .op(top: 16, bottom: 6),
          InkWell(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(Constant.arrowDown).op(right: 10),
                ],
              ),
              height: getHeight(44),
              decoration: MyDeco.radiusColor(),
            ),
            onTap: () {},
          ),
          Visibility(
            visible: false,
            child: Container(
              decoration: MyDeco.radiusAndColor(color: ConstColor.dark, r: 6),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Paid",
                        style: TextStyle(color: ConstColor.white),
                      ),
                      SvgPicture.asset(Constant.activRadio)
                    ],
                  ).op(bottom: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "In process",
                        style: TextStyle(color: ConstColor.white),
                      ),
                      SvgPicture.asset(Constant.activRadio)
                    ],
                  ).op(bottom: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rejected by Payme",
                        style: TextStyle(color: ConstColor.white),
                      ),
                      SvgPicture.asset(Constant.activRadio)
                    ],
                  ).op(bottom: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rejected by IQ",
                        style: TextStyle(color: ConstColor.white),
                      ),
                      SvgPicture.asset(Constant.activRadio)
                    ],
                  ),
                ],
              ).all(all: 20),
            ),
          ),
          Visibility(
            visible: false,
            child: Container(
              child: Center(
                child: Text(
                  "Save contract",
                  style: TextStyle(color: ConstColor.white),
                ),
              ),
              height: getHeight(44),
              decoration:
                  MyDeco.radiusAndColor(color: ConstColor.lightGren, r: 6),
            ).op(top: 24),
          ),
        ],
      ).sp(h: 16),
    );
  }
}
