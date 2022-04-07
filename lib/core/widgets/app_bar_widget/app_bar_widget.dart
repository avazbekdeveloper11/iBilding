import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/constants/constant.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';

class AppBarWIdget extends StatelessWidget {
  String title;
  Color? color;
  AppBarWIdget({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      backgroundColor: color,
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
      actions: [
        IconButton(
          icon: SvgPicture.asset(Constant.filter),
          splashRadius: 20,
          onPressed: () {},
        ),
        SvgPicture.asset(Constant.line).sp(h: 3),
        IconButton(
          icon: SvgPicture.asset(Constant.search),
          splashRadius: 20,
          onPressed: () {},
        ),
      ],
    );
  }
}
