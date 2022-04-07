
import 'package:flutter/material.dart';
import 'package:i_bilding/core/colors/colors.dart';
import 'package:i_bilding/core/constants/size_config.dart';
import 'package:i_bilding/core/extensions/padding_extension.dart';

class DoubleButton extends StatelessWidget {
  const DoubleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(85),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ConstColor.lightGren,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {},
              child: const Text("Contracts"),
            ).op(right: 15),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Invoice",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}