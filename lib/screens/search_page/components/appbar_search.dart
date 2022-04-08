import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/constants/constant.dart';

class SearchAppbar extends StatelessWidget {
  const SearchAppbar({
    Key? key,
  }) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      shadowColor: ConstColor.white,
      elevation: 1,
      leading: IconButton(
        splashRadius: 20,
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
      title: TextFormField(
        decoration: InputDecoration(
          hintText: "Search by keywords",
          hintStyle: TextStyle(color: ConstColor.white),
          border: InputBorder.none,
        ),
      ),
      actions: [
        IconButton(
          splashRadius: 20,
          icon: SvgPicture.asset(Constant.close),
          onPressed: () => Navigator.pop(context),
        ),
      ],
    );
  }
}
