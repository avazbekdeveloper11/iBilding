import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/widgets/app_bar_widget/app_bar_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ConstColor.darkes,
        title: const Text("Profile"),
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
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text("data"),
        ],
      ),
    );
  }
}
