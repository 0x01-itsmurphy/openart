import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotCollectionBox extends StatelessWidget {
  const HotCollectionBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/hot_collection_star_icon.svg'),
              const SizedBox(
                width: 5,
              ),
              const Text(
                'Hot Collection',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 4,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              mainAxisExtent: 220,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/Rectangle1.png'),
                  ),
                ),
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Text(
                "Water and sunflower",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Text(
                  "30 items",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/Rectangle1.png'),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "By Rodion Kutsaev",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 5, bottom: 5),
                  child: Row(
                    children: const [
                      Icon(Icons.favorite_outline),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Follow",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
