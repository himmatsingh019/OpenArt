import 'package:flutter/material.dart';
import 'package:nft_ui/ui/sold_page/widgets/sold_card.dart';
import 'package:nft_ui/ui/theme/icons.dart';
import 'package:nft_ui/ui/widgets/custom_appbar.dart';
import 'package:nft_ui/ui/widgets/custom_button.dart';
import 'package:nft_ui/ui/widgets/custom_footer.dart';
import 'package:nft_ui/ui/widgets/custom_outline_button.dart';

class PlaceBid extends StatelessWidget {
  const PlaceBid({Key? key}) : super(key: key);

  static const String route = '/placeBid';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppbar(showBack: true, showSearch: false),
                SizedBox(height: 40),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/images/image4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Silent Color',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        size: 28,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.ios_share,
                        size: 28,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        height: 40,
                        width: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [
                              Colors.orange,
                              Colors.yellow,
                            ],
                          ),
                        ),
                        child: Text(
                          'H',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '@ openart',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Together with my design team, we designed this futuristic Cyberyacht concept artwork. We wanted to create something that has not been created yet, so we started to collect ideas of how we imagine the Cyberyacht could look like in the future.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppIcons.etherscan,
                      Text(
                        'View on Etherscan',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.open_in_new_rounded,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppIcons.star,
                      Text(
                        'View on IPFS',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.open_in_new_rounded,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 56,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppIcons.metadeta,
                      Text(
                        'View IPFS Metadata',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.open_in_new_rounded,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Reserve price',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        '1.50 ETH',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Once a bid has been placed and the reserve price has been met, a 24 hour auction for this artwork will begin.',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(height: 30),
                      CustomButton(title: 'Place a bid', isBid: true, route: ''),
                      SizedBox(height: 30),
                      Text(
                        'Activity',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: 18),
                      SoldCard(bidBy: 'Boni', price: '3.1'),
                      SizedBox(height: 18),
                      SoldCard(bidBy: 'Krish', price: '2.2'),
                      SizedBox(height: 50),
                      Center(child: AppIcons.logo2),
                      SizedBox(height: 10),
                      Center(child: AppIcons.creative),
                      SizedBox(height: 20),
                      CustomButton(title: 'Earn Now', route: ''),
                      SizedBox(height: 20),
                      CustomOutlineButton(title: 'Discover More'),
                      SizedBox(height: 70),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomFooter(),
        ],
      ),
    );
  }
}
