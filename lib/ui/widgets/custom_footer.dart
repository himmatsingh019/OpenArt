import 'package:flutter/material.dart';
import 'package:nft_ui/ui/theme/colors.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      width: MediaQuery.of(context).size.width,
      color: AppColors.blackBacgroundColor,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    lightText('Instagram'),
                    SizedBox(height: 20),
                    lightText('Twitter'),
                    SizedBox(height: 20),
                    lightText('Discord'),
                    SizedBox(height: 20),
                    lightText('Blog'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    lightText('About'),
                    SizedBox(height: 20),
                    lightText('Community Guidelines'),
                    SizedBox(height: 20),
                    lightText('Terms of Services'),
                    SizedBox(height: 20),
                    lightText('Privacy'),
                    SizedBox(height: 20),
                    lightText('Careers'),
                    SizedBox(height: 20),
                    lightText('Help'),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Icon(
                  Icons.copyright_outlined,
                  color: Colors.white,
                  size: 18,
                ),
                Text(
                  '2022 Openart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text lightText(String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    );
  }
}
