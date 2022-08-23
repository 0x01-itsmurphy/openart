import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openart/Constants/Colors/app_colors.dart';
import 'package:openart/Design/Elements/Buttons/gradient_border_botton.dart';
import 'package:openart/Design/Elements/Buttons/gradient_button.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SvgPicture.asset("assets/logo/footer_logo.svg"),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      color: AppColors.titleActiveBlack,
                      fontSize: 26,
                    ),
                    children: [
                      TextSpan(
                        text: 'The ',
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                      TextSpan(
                        text: 'New ',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      TextSpan(
                        text: 'Creative ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      TextSpan(
                        text: 'Economy',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GradientButton(
                  onTap: () {},
                  text: 'Earn now',
                ),
                const SizedBox(
                  height: 20,
                ),
                GradientBorderButton(
                  onTap: () {},
                  text: 'Discover more',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            decoration: const BoxDecoration(color: AppColors.bodyBlack),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Instagram",
                        style: textStyle(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Twitter",
                        style: textStyle(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Discord",
                        style: textStyle(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "GitHub",
                        style: textStyle(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About",
                        style: textStyle(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Community Guidlines",
                        style: textStyle(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Terms of Service",
                        style: textStyle(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Privacy",
                        style: textStyle(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Careers",
                        style: textStyle(),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Help",
                        style: textStyle(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
            decoration: const BoxDecoration(color: AppColors.bodyBlack),
            padding: const EdgeInsets.only(top: 30, bottom: 30, left: 20),
            width: double.infinity,
            child: const Text(
              '© 2021 Openart',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: AppColors.backgroundGreyLight,
              ),
            ),
          ),
        ],
      ),
    );
  }

  TextStyle textStyle() {
    return const TextStyle(
      color: AppColors.backgroundGreyLight,
      fontSize: 16,
      fontWeight: FontWeight.w400,
    );
  }
}
