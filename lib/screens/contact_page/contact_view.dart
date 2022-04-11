import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';
import 'package:i_bilding/core/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:i_bilding/core/widgets/card/card.dart';
import 'package:i_bilding/screens/contact_page/components/calendar.dart';
import 'package:i_bilding/screens/contact_page/components/double_button.dart';
import 'package:i_bilding/service/hive_service.dart';

class ContractstView extends StatelessWidget {
  const ContractstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int a = 4;
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBarWIdget(
        title: "Contracts",
        color: ConstColor.background,
      ).build(context),
      body: Column(
        children: [
          const CalendarWidget(),
          HiveService.box!.length == 0
              ? Expanded(
                  child: Visibility(
                    child: Center(
                      child: SizedBox(
                        height: getHeight(117),
                        width: getWidht(161),
                        child: Image.asset(
                          Constant.emptyList,
                        ),
                      ),
                    ),
                  ),
                )
              : cardBuilder(a),
        ],
      ),
    );
  }

  Expanded cardBuilder(a) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (_, __) {
          if (__ == 0) {
            return const DoubleButton();
          } else {
            return CardData(cardData: [{
              "fish": "Yo'ldoshova",
              "status": "Paid",
              "Amout": 1200000,
              "lastinvoice": 156,
              "number": 6,
              "adress":
                  "Проспект Мирзо-Улугбек, дом 58, Мирзо-Улугбекский район, Ташкент",
              "inn": 5647520318,
              "cratedAt": "14:38, 2 February, 2021",
            }][0]).op(top: 12, left: 16, right: 16);
          }
        },
        itemCount: HiveService.box!.length + 1,
      ),
    );
  }
}
