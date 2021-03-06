import 'package:flutter/material.dart';
import 'package:nft_ui/ui/theme/colors.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    Key? key,
    required this.title,
    this.isBid = false,
  }) : super(key: key);

  final String title;
  final bool isBid;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isBid ? 56 : 66,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColors.indigoColor,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
