import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';

class LeadingAndTitleAppBar extends StatelessWidget {
  String title;
  LeadingAndTitleAppBar({Key? key, required this.title}) : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: ConstColor.darkes,
      leading: Container(
        margin: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: ConstColor.grey,
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          image: const DecorationImage(
            image: AssetImage('assets/png/elipse.png'),
          ),
        ),
      ),
      title: Text(title),
    );
  }
}
