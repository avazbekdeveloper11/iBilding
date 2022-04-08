import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';
import 'package:i_bilding/screens/filter_page/components/check_box.dart';
import 'package:i_bilding/screens/history_page/components/to_do_date.dart';

class FilterView extends StatelessWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Filters",
          style: TextStyle(
            color: ConstColor.whiteBold,
            fontSize: getWidht(20),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Status",
            style: TextStyle(
              color: ConstColor.greyText,
            ),
          ).op(top: 28, left: 16),
          Row(
            children: [
              chackboxTile(isCheck: true, text: "Paid"),
              chackboxTile(isCheck: false, text: "Rejected by IQ"),
            ],
          ),
          Row(
            children: [
              chackboxTile(isCheck: true, text: "In process "),
              chackboxTile(isCheck: false, text: "Rejected by Payme"),
            ],
          ),
          const ToDoData(),
        ],
      ),
    );
  }
}
