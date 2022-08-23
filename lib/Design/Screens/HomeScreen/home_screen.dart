import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openart/Constants/Colors/app_colors.dart';
import 'package:openart/Constants/Strings/app_strings.dart';
import 'package:openart/Design/Elements/Buttons/gradient_border_botton.dart';
import 'package:openart/Design/Elements/Buttons/gradient_button.dart';
import 'package:openart/Design/Elements/CustomContainers/details_outline_container.dart';
import 'package:openart/Design/Elements/CustomContainers/normal_container.dart';
import 'package:openart/Design/Elements/CustomContainers/texts_in_row_containers.dart';
import 'package:openart/Design/Elements/Widgets/footer.dart';
import 'package:openart/Design/Screens/HomeScreen/Widgets/header.widget.dart';
import 'package:openart/Design/Screens/HomeScreen/Widgets/hot_bid_box.dart';
import 'package:openart/Design/Screens/HomeScreen/Widgets/hot_collection_box.dart';
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
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.inputBackgroundGreyLight,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: AppString.homeSearchBoxHintText,
                              prefixIcon: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.search,
                                  color: AppColors.bodyBlack,
                                ),
                              ),
                              prefixIconConstraints: BoxConstraints(
                                minWidth: 5,
                                minHeight: 5,
                              ),
                              suffixIcon: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.mic,
                                  color: AppColors.bodyBlack,
                                ),
                              ),
                              suffixIconConstraints: BoxConstraints(
                                minWidth: 5,
                                minHeight: 5,
                              ),
                              isDense: true,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none),
                        ),
                      ),
                    ),
                    const ItemCardWidget(),
                    const TextsInRow(),
                    GradientButton(
                      onTap: () {},
                      text: 'Place a bid',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GradientBorderButton(
                      onTap: () {},
                      text: "View artwork",
                    ),
                    const ItemCardWidget(),
                    const NormalContainer(),
                    const ItemCardWidget(),
                    const DetailsOutlineContainer(),
                    const SizedBox(
                      height: 20,
                    ),
                    const HotBidBox(),
                    const SizedBox(
                      height: 40,
                    ),
                    const HotCollectionBox(),
                    const SizedBox(
                      height: 40,
                    ),
                    GradientBorderButton(
                      onTap: () {},
                      text: "View more collection",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Footer()
            ],
          ),
        ),
      ),
    );
  }
}
