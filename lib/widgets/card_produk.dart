import 'package:flutter/cupertino.dart';
import 'package:shamo/theme.dart';

class CardProduk extends StatelessWidget {
  const CardProduk({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/product-page");
      },
      child: Container(
        margin: EdgeInsets.only(left: defaulMargin),
        height: 280,
        width: 215,
        decoration: BoxDecoration(
          color: primaryTextC,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Image.asset(
              "assets/image_shoes.png",
              height: 150,
              width: 215,
              fit: BoxFit.cover,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "hiking",
                    style: secondarytextstyle,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "COURT VISION 2.0",
                    style: titletextstyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "\$58,67",
                    style: pricetextstyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
