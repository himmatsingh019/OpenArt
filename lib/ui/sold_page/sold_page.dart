import 'package:flutter/material.dart';
import 'package:nft_ui/ui/sold_page/widgets/sold_card.dart';
import 'package:nft_ui/ui/theme/colors.dart';
import 'package:nft_ui/ui/theme/icons.dart';
import 'package:nft_ui/ui/widgets/custom_appbar.dart';

class SoldPage extends StatelessWidget {
  SoldPage({Key? key, this.image}) : super(key: key);
  static const String route = '/sold';

  String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppbar(
                  showBack: true,
                  showSearch: false,
                ),
                SizedBox(height: 40),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      image ?? '',
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
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Sold For ',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                            ),
                            TextSpan(
                              text: '2.50 ETH',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Owned by',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                height: 34,
                                width: 34,
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
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '@david',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  'Activity',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 18),
                SoldCard(),
                SizedBox(height: 18),
                SoldCard(),
                SizedBox(height: 18),
                SoldCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
