import 'package:flutter/material.dart';

class SoldButton extends StatelessWidget {
  const SoldButton({
    Key? key,
    required this.price,
  }) : super(key: key);

  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(40),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Sold For ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            TextSpan(
              text: '2.00 ETH',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
