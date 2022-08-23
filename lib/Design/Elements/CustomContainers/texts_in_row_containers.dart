import 'package:flutter/material.dart';
import 'package:openart/Constants/Colors/app_colors.dart';

class TextsInRow extends StatefulWidget {
  const TextsInRow({Key? key}) : super(key: key);

  @override
  State<TextsInRow> createState() => _TextsInRowState();
}

class _TextsInRowState extends State<TextsInRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: const [
          Text(
            "Reserve Price ",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "1.50 ETH ",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "\$2,683.73",
            style: TextStyle(
              color: AppColors.placeholderGrey,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
