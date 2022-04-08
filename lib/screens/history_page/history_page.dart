import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';
import 'package:i_bilding/core/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:i_bilding/core/widgets/card/card.dart';
import 'package:i_bilding/screens/history_page/components/to_do_date.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWIdget(title: "History", color: ConstColor.darkes)
          .build(context),
      body: Column(
        children: [
          const ToDoData(),
          cardBuilder(),
        ],
      ),
    );
  }

  SizedBox cardBuilder() {
    return SizedBox(
      height: getHeight(548.6),
      child: ListView.builder(
        itemBuilder: (_, __) {
          return const CardData().op(top: 12, left: 16, right: 16);
        },
      ),
    );
  }
}
