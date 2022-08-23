import 'package:flutter/material.dart';
import 'package:openart/Constants/Colors/app_colors.dart';

class ItemCardWidget extends StatelessWidget {
  const ItemCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 18),
      child: Container(
        height: 540,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: AppColors.offWhite,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                color: AppColors.lineGrey,
                blurRadius: 20,
                offset: Offset(5.0, 5.0),
                spreadRadius: 2.0,
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 410,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/Rectangle1.png'),
                ),
              ),
            ),
            const Spacer(),
            const Text(
              'Silent Wave',
              style: TextStyle(
                  color: AppColors.titleActiveBlack,
                  fontStyle: FontStyle.normal,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/Rectangle1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Pawel Czerwinski',
                      style: TextStyle(
                          color: AppColors.bodyBlack,
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Creator',
                      style: TextStyle(
                          color: AppColors.lableGrey,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    print("Faveroit");
                  },
                  icon: const Icon(Icons.favorite_outline_rounded),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
