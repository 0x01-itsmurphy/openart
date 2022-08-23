
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/logo/Logo.svg',
          ),
          const Spacer(),
          SvgPicture.asset(
            'assets/logo/Menu.svg',
          ),
        ],
      ),
    );
  }
}