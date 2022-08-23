import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openart/Constants/Colors/app_colors.dart';
import 'package:openart/Constants/Strings/app_strings.dart';
import 'package:openart/Design/Elements/Buttons/gradient_border_botton.dart';
import 'package:openart/Design/Elements/Buttons/gradient_button.dart';
import 'package:openart/Design/Elements/CustomContainers/details_outline_container.dart';
import 'package:openart/Design/Elements/CustomContainers/normal_container.dart';
import 'package:openart/Design/Elements/CustomContainers/texts_in_row_containers.dart';
import 'package:openart/Design/Screens/HomeScreen/Widgets/header.widget.dart';
import 'package:openart/Design/Screens/HomeScreen/Widgets/item_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        children: const [
                          Text(
                            'Discover, collect, and sell',
                            style: TextStyle(
                                color: AppColors.lableGrey,
                                fontFamily: 'Epilogue',
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Your Digital Art',
                            style: TextStyle(
                                color: AppColors.titleActiveBlack,
                                fontStyle: FontStyle.normal,
                                fontSize: 32,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.inputBackgroundGreyLight,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: AppString.homeSearchBoxHintText,
                            prefixIcon:
                                Icon(Icons.search, color: AppColors.bodyBlack),
                            suffixIcon:
                                Icon(Icons.mic, color: AppColors.bodyBlack),
                            isDense: false,
                            focusedBorder: InputBorder.none),
                      ),
                    ),
                    const ItemCardWidget(),
                    TextsInRow(),
                    GradientButton(
                      onTap: () {},
                      text: 'Place a bid',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    BorderButton(
                      onTap: () {},
                      text: "View artwork",
                    ),
                    const ItemCardWidget(),
                    const NormalContainer(),
                    const ItemCardWidget(),
                    const DetailsOutlineContainer()
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
