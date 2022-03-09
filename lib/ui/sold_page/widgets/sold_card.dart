import 'package:flutter/material.dart';
import 'package:nft_ui/ui/theme/colors.dart';
import 'package:nft_ui/ui/theme/icons.dart';

class SoldCard extends StatelessWidget {
  const SoldCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 50,
            width: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  AppColors.indigoColor,
                  AppColors.purpleColor,
                ],
              ),
            ),
            child: Text(
              'D',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Auction won by David',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'June 04, 2021 at 12:00am',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              Text(
                'Sold for 1.50 ETH',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          AppIcons.openLink,
        ],
      ),
    );
  }
}
