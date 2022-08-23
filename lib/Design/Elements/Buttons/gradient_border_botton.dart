import 'package:flutter/material.dart';

class GradientBorderButton extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  const GradientBorderButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  @override
  State<GradientBorderButton> createState() => _GradientBorderButtonState();
}

class _GradientBorderButtonState extends State<GradientBorderButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        height: 55,
        width: double.infinity,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF0038F5),
              Color(0xFF9F03FF),
            ],
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            widget.text,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
