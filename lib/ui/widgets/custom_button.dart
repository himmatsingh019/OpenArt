import 'package:flutter/material.dart';
import 'package:nft_ui/ui/theme/colors.dart';
import 'package:nft_ui/ui/theme/icons.dart';
import 'package:nft_ui/ui/widgets/custom_outline_button.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.route,
    this.isBid = false,
    this.isConnect = false,
  }) : super(key: key);

  final String title;
  final String route;
  final bool isBid;
  final bool isConnect;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (route != '') {
          Navigator.of(context).pushNamed(route);
        } else if (isBid) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                content: Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Place a bid',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.close,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'You must bid at least 0.825 ETH',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                        'Your bid',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Enter bid',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'ETH',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Your balance',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '5.66 ETH',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Service Fees',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '0.0001 ETH',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Fees',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '0.0001 ETH',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      CustomButton(title: 'Place Bid', route: '', isBid: true),
                      SizedBox(height: 20),
                      CustomOutlineButton(title: 'Cancel', isBid: true),
                    ],
                  ),
                ),
              );
            },
          );
        }
        if (isConnect) {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                content: Container(
                  height: 340,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Connect Wallet',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.close,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Center(child: AppIcons.connectWallet),
                      Text(
                        'By connecting your wallet, you agree to our Terms of Service and our Privacy Policy',
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      CustomButton(title: 'Connect Wallet', route: '', isBid: true)
                    ],
                  ),
                ),
              );
            },
          );
        }
      },
      child: Container(
        height: isBid ? 56 : 66,
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
      ),
    );
  }
}
