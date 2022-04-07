import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';
import 'package:i_bilding/core/widgets/app_bar_widget/app_bar_widget.dart';
import 'package:i_bilding/core/widgets/card/card.dart';

class SavedView extends StatelessWidget {
  const SavedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int a = 2;
    return Scaffold(
      appBar: AppBarWIdget(
        title: "Saved",
        color: ConstColor.darkes,
      ).build(context),
      body: a == 0
          ? Center(
              child: SizedBox(
                height: getHeight(117),
                width: getWidht(136),
                child: Image.asset(
                  Constant.emptySaved,
                ),
              ),
            )
          : savedBuilder(a),
    );
  }

  ListView savedBuilder(a) {
    return ListView.builder(
      itemBuilder: (_, __) {
        return const CardData().op(top: 12, left: 16, right: 16);
      },
      itemCount: a,
    );
  }
}
