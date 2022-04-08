import 'package:flutter/material.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';
import 'package:i_bilding/core/widgets/card/card.dart';
import 'package:i_bilding/screens/search_page/components/appbar_search.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int a = 5;
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.2),
      appBar: const SearchAppbar().build(context),
      body: a == 0
          ? Center(
              child: SizedBox(
                height: getHeight(117),
                width: getWidht(136),
                child: Image.asset(
                  Constant.emptyList,
                ),
              ),
            )
          : SizedBox(
              height: size.height,
              width: double.infinity,
              child: ListView.builder(
                itemBuilder: (_, __) {
                  return const CardData().op(top: 12, left: 16, right: 16);
                },
                itemCount: a,
              ),
            ),
    );
  }
}
