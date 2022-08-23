import 'package:flutter/material.dart';
import 'package:openart/Constants/Colors/app_colors.dart';

class GradientButton extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  const GradientButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 55,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment(-2, 0),
            end: Alignment(1, -2),
            tileMode: TileMode.clamp,
            colors: [
              Color(0xFF0038F5),
              Color(0xFF9F03FF),
            ],
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          widget.text,
          style: const TextStyle(
            color: AppColors.offWhite,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
