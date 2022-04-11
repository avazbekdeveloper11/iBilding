import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/components/my_deco.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';

class CardData extends StatelessWidget {
  Map cardData = {};
  CardData({Key? key, required this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/singel");
      },
      child: Container(
        height: getHeight(148),
        decoration: MyDeco.radiusAndColor(
          color: ConstColor.dark,
          r: 6,
        ),
        child: Padding(
          padding: EdgeInsets.all(getWidht(12)),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(Constant.paper),
                  Text(
                    "№ ${cardData["lastinvoice"]}",
                    style: TextStyle(
                      color: ConstColor.white,
                      fontWeight: FontWeight.w700,
                      fontSize: getWidht(14),
                    ),
                  ).op(left: 6),
                  const Spacer(),
                  Container(
                    height: getHeight(21),
                    decoration: MyDeco.radiusAndColor(
                      r: 8,
                      color: ConstColor.lightGren.withOpacity(0.3),
                    ),
                    child: Center(
                      child: Text(
                        cardData["status"].toString(),
                        style: TextStyle(
                          color: ConstColor.lightGren,
                          fontWeight: FontWeight.w500,
                          fontSize: getWidht(12),
                        ),
                      ),
                    ).sp(h: 12),
                  ),
                ],
              ),
              rowText(category: "Fish", title: cardData["fish"].toString())
                  .op(top: 11, bottom: 5),
              rowText(
                      category: "Amount",
                      title: cardData["Amout"].toString() + "UZS")
                  .op(bottom: 5),
              rowText(
                      category: "Last invoice:",
                      title: "№ ${cardData["number"]}")
                  .op(bottom: 5),
              Row(
                children: [
                  Text(
                    "Number of invoices:",
                    style: TextStyle(
                      color: ConstColor.white,
                      fontWeight: FontWeight.w500,
                      fontSize: getWidht(14),
                    ),
                  ).op(right: 5, left: 3),
                  Text(
                    cardData["number"].toString(),
                    style: TextStyle(
                      color: ConstColor.greyText,
                      fontWeight: FontWeight.w400,
                      fontSize: getWidht(14),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    cardData["cratedAt"].toString(),
                    style: TextStyle(
                      color: ConstColor.greyText,
                      fontWeight: FontWeight.w700,
                      fontSize: getWidht(14),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row rowText({
    required String category,
    required String title,
    String data = "20.20.2020",
  }) {
    return Row(
      children: [
        Text(
          category + " : ",
          style: TextStyle(
            color: ConstColor.white,
            fontWeight: FontWeight.w500,
            fontSize: getWidht(14),
          ),
        ).op(right: 5, left: 3),
        Text(
          title,
          style: TextStyle(
            color: ConstColor.greyText,
            fontWeight: FontWeight.w400,
            fontSize: getWidht(14),
          ),
        ),
      ],
    );
  }
}
