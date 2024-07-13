
import 'package:flutter/cupertino.dart';
import 'package:myapp/utils/colors.dart';
import 'package:myapp/utils/text.dart';

class SquareBoxDesign extends StatelessWidget {
  final String text;
  const SquareBoxDesign({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: AppColor.backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: const Border.fromBorderSide(BorderSide(
            color: Color.fromARGB(255, 112, 124, 134),
            width: 0.25,
          )),
          boxShadow: const [
             BoxShadow(
                color: AppColor.primaryTextColor,
                blurRadius: 5,
                spreadRadius: 1)
          ]),
      child: AppText(text: text, color: AppColor.primaryTextColor),
    );
  }
}