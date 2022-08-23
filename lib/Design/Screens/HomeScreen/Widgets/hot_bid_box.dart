import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:openart/Constants/Colors/app_colors.dart';

class HotBidBox extends StatefulWidget {
  const HotBidBox({Key? key}) : super(key: key);

  @override
  State<HotBidBox> createState() => _HotBidBoxState();
}

class _HotBidBoxState extends State<HotBidBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/hot_bid_fire_icon.svg'),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Hot bid',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back),
                color: AppColors.lableGrey,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward),
                color: AppColors.lableGrey,
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 300,
                          width: 254,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/images/Rectangle1.png'),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Inside Kings Cross",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: const Text(
                                "2.3 ETH",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Highest bid",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "2.3 ETH",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
