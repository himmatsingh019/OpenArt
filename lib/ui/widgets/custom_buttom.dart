import 'package:flutter/material.dart';
import 'package:nft_ui/ui/theme/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            AppColors.indigoColor,
            AppColors.purpleColor,
          ],
          begin: FractionalOffset(0, 2),
          end: FractionalOffset(0.9, 5),
          tileMode: TileMode.clamp,
          // stops: [0, 1],
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
