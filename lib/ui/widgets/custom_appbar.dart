import 'package:flutter/material.dart';
import 'package:nft_ui/ui/menu/menu.dart';
import 'package:nft_ui/ui/theme/icons.dart';
import 'package:nft_ui/utils/size.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(MenuScreen.route);
      },
      child: Row(
        children: [
          AppIcons.logo,
          Spacer(),
          AppIcons.searchButton,
          SizedBox(width: SizeHelper.wBlock * 20),
          AppIcons.menuButton,
        ],
      ),
    );
  }
}
