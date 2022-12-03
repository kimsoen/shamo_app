import 'package:flutter/material.dart';
import 'package:shamo/pages/wishlist_produk.dart';
import 'package:shamo/theme.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundC1,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Favorite Shoes",
          style: primarytextstyle,
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundC4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/image_wishlist.png",
                width: 74,
              ),
              const SizedBox(height: 23),
              Text(
                " You don't have dream shoes?",
                style: primarytextstyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                "Let's find your favorite shoes",
                style: subtitleTextStyle,
              ),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: primaryC),
                  child: Text(
                    "Explore Store",
                    style: primarytextstyle,
                  ))
            ],
          ),
        ),
      );
    }

    Widget productWislist() {
      return Column(
        children: [
          WishlistProduct(),
          WishlistProduct(),
        ],
      );
    }

    return Column(
      children: [
        header(),
        productWislist(),
      ],
    );
  }
}
