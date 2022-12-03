import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/card_produk.dart';
import 'package:shamo/widgets/product_arrival.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
            top: defaulMargin, left: defaulMargin, right: defaulMargin),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "HALLO, Alex",
                    style: primarytextstyle.copyWith(fontSize: 20),
                  ),
                  Text(
                    "@Alexkeinn",
                    style: subtitleTextStyle.copyWith(fontSize: 20),
                  ),
                ],
              ),
              Image.asset(
                "assets/image_profile.png",
                width: 54,
              )
            ],
          ),
        ),
      );
    }

    Widget category() {
      return Container(
        margin: EdgeInsets.all(defaulMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 45,
                width: 93,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: primaryC, borderRadius: BorderRadius.circular(12)),
                child: Text(
                  "All Shoes",
                  style: primarytextstyle,
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 45,
                width: 93,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: transparantC,
                    border: Border.all(color: subtitleC),
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  "running",
                  style: subtitleTextStyle.copyWith(fontWeight: medium),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 45,
                width: 93,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: transparantC,
                    border: Border.all(color: subtitleC),
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  "Training",
                  style: subtitleTextStyle.copyWith(fontWeight: medium),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 45,
                width: 93,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: transparantC,
                    border: Border.all(color: subtitleC),
                    borderRadius: BorderRadius.circular(12)),
                child: Text(
                  "BasketBall",
                  style: subtitleTextStyle.copyWith(fontWeight: medium),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      );
    }

    Widget populertextStyle() {
      return Container(
        margin: EdgeInsets.only(left: defaulMargin, bottom: 14),
        child: Text(
          "POLULER PRODUK",
          style: primarytextstyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget populerProduk() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: const [
            CardProduk(),
            CardProduk(),
            CardProduk(),
          ],
        ),
      );
    }

    Widget newArrivalstitle() {
      return Container(
        margin:
            EdgeInsets.only(top: defaulMargin, left: defaulMargin, bottom: 14),
        child: Text(
          "NEW ARRIVALS",
          style: primarytextstyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Column(
        children: const [
          NewArrivalProduct(),
          NewArrivalProduct(),
          NewArrivalProduct(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundC1,
      body: ListView(
        children: [
          header(),
          category(),
          populertextStyle(),
          populerProduk(),
          newArrivalstitle(),
          newArrivals()
        ],
      ),
    );
  }
}
