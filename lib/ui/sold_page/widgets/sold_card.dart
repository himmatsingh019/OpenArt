import 'package:flutter/material.dart';
import 'package:nft_ui/ui/theme/colors.dart';
import 'package:nft_ui/ui/theme/icons.dart';

class SoldCard extends StatelessWidget {
  const SoldCard({
    Key? key,
    this.isSold = false,
    this.bidBy,
    required this.price,
  }) : super(key: key);

  final bool isSold;
  final String? bidBy;
  final String price;

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
            height: 46,
            width: 46,
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
              if (isSold)
                Text(
                  'Auction won by David',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              if (!isSold)
                Text(
                  'Bid place by @$bidBy',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              SizedBox(height: 4),
              Text(
                'June 04, 2021 at 12:00am',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              if (isSold)
                Text(
                  'Sold for $price ETH',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              if (!isSold)
                Text(
                  '$price ETH',
                  style: TextStyle(
                    fontSize: 20,
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
