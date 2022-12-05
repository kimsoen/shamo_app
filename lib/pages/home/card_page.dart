import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/card_card.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget? header() {
      return AppBar(
        centerTitle: true,
        backgroundColor: backgroundC3,
        title: const Text("Your Cart"),
      );
    }

    Widget emtyCard() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon_empty_cart.png",
              width: 80,
            ),
            const SizedBox(height: 20),
            Text(
              "Opss! Your Cart is Empty",
              style: primarytextstyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "Let's find your favorite shoes",
              style: secondarytextstyle,
            ),
            const SizedBox(height: 20),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: primaryC,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10)),
              onPressed: () {},
              child: Text(
                "Explore Store",
                style: primarytextstyle,
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaulMargin),
        children: [
          const CardCard(),
        ],
      );
    }

    Widget costomNavBar() {
      return Container(
        height: 165,
        margin: EdgeInsets.symmetric(horizontal: defaulMargin),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal",
                  style: primarytextstyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  "\$287,96",
                  style: pricetextstyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Divider(
              color: subtitleC,
              thickness: 2,
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: primaryC,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 13,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Continue to Checkout",
                      style: primarytextstyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Color(0xffFFFFFF),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundC1,
      appBar: header(),
      bottomNavigationBar: costomNavBar(),
      body: content(),
    );
  }
}
