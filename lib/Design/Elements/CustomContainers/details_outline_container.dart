import 'package:flutter/cupertino.dart';
import 'package:openart/Constants/Colors/app_colors.dart';

class DetailsOutlineContainer extends StatelessWidget {
  const DetailsOutlineContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(50),
        color: AppColors.offWhite,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Current bid",
                style: TextStyle(
                  color: AppColors.lableGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "2.00 ETH",
                style: TextStyle(
                  color: AppColors.lableGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Ending in",
                style: TextStyle(
                  color: AppColors.lableGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "27m 30s",
                style: TextStyle(
                  color: AppColors.lableGrey,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
