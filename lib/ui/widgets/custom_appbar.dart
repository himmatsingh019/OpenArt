import 'package:flutter/material.dart';
import 'package:nft_ui/ui/menu/menu.dart';
import 'package:nft_ui/ui/theme/icons.dart';
import 'package:nft_ui/utils/size.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    Key? key,
    required this.showBack,
    required this.showSearch,
  }) : super(key: key);
  final bool showBack;
  final bool showSearch;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showBack)
          GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios)),
        if (showBack) Spacer(),
        AppIcons.logo,
        Spacer(),
        if (showSearch) AppIcons.searchButton,
        SizedBox(width: SizeHelper.wBlock * 20),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(MenuScreen.route);
          },
          child: AppIcons.menuButton,
        ),
      ],
    );
  }
}
