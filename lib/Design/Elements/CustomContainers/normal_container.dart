import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:openart/Constants/Colors/app_colors.dart';

class NormalContainer extends StatelessWidget {
  const NormalContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.offWhite,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Sold For ",
            style: TextStyle(
              color: AppColors.lableGrey,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "2.00 ETH",
            style: TextStyle(
              color: AppColors.lableGrey,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
