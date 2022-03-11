import 'package:flutter/material.dart';
import 'package:nft_ui/ui/about/about.dart';
import 'package:nft_ui/ui/menu/widgtes/custom_textbutton.dart';
import 'package:nft_ui/ui/theme/icons.dart';
import 'package:nft_ui/ui/widgets/custom_button.dart';
import 'package:nft_ui/utils/size.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);
  static const String route = '/menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  AppIcons.logo,
                  Spacer(),
                  AppIcons.searchButton,
                  SizedBox(width: SizeHelper.wBlock * 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: AppIcons.closeButton,
                  ),
                ],
              ),
              SizedBox(height: SizeHelper.hBlock * 70),
              CustomTextButton(
                title: 'About OpenArt',
                route: AboutScreen.route,
              ),
              SizedBox(height: SizeHelper.hBlock * 12),
              CustomTextButton(
                title: 'Blog',
                route: AboutScreen.route,
              ),
              SizedBox(height: SizeHelper.hBlock * 12),
              CustomTextButton(
                route: AboutScreen.route,
                title: 'Help',
              ),
              SizedBox(height: SizeHelper.hBlock * 12),
              CustomTextButton(
                title: 'Contact',
                route: AboutScreen.route,
              ),
              Spacer(),
              CustomButton(title: 'Connect wallet', route: '', isConnect: true),
            ],
          ),
        ),
      ),
    );
  }
}
