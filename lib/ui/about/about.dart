import 'package:flutter/material.dart';
import 'package:nft_ui/ui/theme/colors.dart';
import 'package:nft_ui/ui/theme/icons.dart';
import 'package:nft_ui/ui/widgets/custom_appbar.dart';
import 'package:nft_ui/ui/widgets/custom_button.dart';
import 'package:nft_ui/ui/widgets/custom_footer.dart';
import 'package:nft_ui/ui/widgets/custom_outline_button.dart';
import 'package:nft_ui/ui/widgets/text_styles.dart';
import 'package:nft_ui/utils/size.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  static const String route = '/about';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppbar(showBack: true, showSearch: false),
                  SizedBox(height: SizeHelper.hBlock * 20),
                  Center(
                    child: Column(
                      children: [
                        HeadingStyle(title: 'About OpenArt'),
                        AppIcons.processor,
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'OpenArt help anyone create a beautiful website, landing page, app to collect NFTs digital art',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 20),
                  HeadingStyle(title: 'Crypto for Creative Communities'),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      'NFTs—non-fungible tokens—are empowering artists, musicians, and all kinds of genre-defying digital creators to invent a new cultural paradigm. How this emerging culture of digital art ownership looks is up to all of us.',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  HeadingStyle(title: 'How it work'),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppIcons.work1,
                            SizedBox(height: 30),
                            Text(
                              'Build Together',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 220,
                        width: 180,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppIcons.work2,
                            SizedBox(height: 30),
                            Text(
                              'Trust',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  HeadingStyle(title: 'For Creators'),
                  SizedBox(height: 10),
                  Text(
                    'Creators are invited to join Foundation by members of the community. Once you’ve received an invite, you’ll need to set up a MetaMask wallet with ETH before you can create an artist profile and mint an NFT—which means uploading your JPG, PNG, or video file to IPFS, a decentralized peer-to-peer storage network. It will then be an NFT you can price in ETH and put up for auction on Foundation.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: Column(
                      children: [
                        AppIcons.logo2,
                        SizedBox(height: 10),
                        AppIcons.tagLine,
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  CustomButton(title: 'Earn Now', route: ''),
                  SizedBox(height: 10),
                  CustomOutlineButton(title: 'Discover more'),
                  SizedBox(height: 40),
                ],
              ),
            ),
            CustomFooter(),
          ],
        ),
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
