import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shamo/pages/home/navbar.dart';
import 'package:shamo/theme.dart';

class DetailProduct extends StatefulWidget {
  DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
  List images = [
    "assets/image_shoes.png",
    "assets/image_shoes2.png",
    "assets/image_shoes3.png",
  ];
  List familiarCard = [
    "assets/image_shoes.png",
    "assets/image_shoes2.png",
    "assets/image_shoes3.png",
    "assets/image_shoes.png",
    "assets/image_shoes2.png",
    "assets/image_shoes3.png",
    "assets/image_shoes.png",
    "assets/image_shoes2.png",
    "assets/image_shoes3.png",
  ];

  int currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget indikator(int index) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 2),
        width: currenIndex == index ? 16 : 4,
        height: 4,
        color: currenIndex == index ? primaryC : Color(0xffC4C4C4),
      );
    }

    Widget header() {
      int index = -1;

      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaulMargin,
              right: defaulMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                  ),
                ),
                const Icon(
                  Icons.shopping_bag,
                )
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (e) => Image.asset(
                    e,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              initialPage: currenIndex,
              onPageChanged: (index, reason) {
                setState(() {
                  currenIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((e) {
              index++;
              return indikator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget familiarImage(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          image: DecorationImage(
            image: AssetImage(imageUrl),
          ),
        ),
      );
    }

    Widget content() {
      int index = -1;

      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundC1,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: defaulMargin,
                left: defaulMargin,
                right: defaulMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TERREX URBAN LOW",
                        style: primarytextstyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        "hikking",
                        style: secondarytextstyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/button_wishlist.png",
                    width: 46,
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(
                top: 20,
                left: defaulMargin,
                right: defaulMargin,
              ),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: backgroundC2,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price starts from",
                    style: primarytextstyle,
                  ),
                  Text(
                    "\$143,98",
                    style: pricetextstyle,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: defaulMargin,
                right: defaulMargin,
                top: defaulMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: primarytextstyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Unpaved trails and mixed surfaces are easy when you have the traction and support you need. Casual enough for the daily commute.",
                    style: primarytextstyle,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: defaulMargin, bottom: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(defaulMargin, 0, defaulMargin, 16),
                    child: Text(
                      "Fimiliar Shoes",
                      style: primarytextstyle.copyWith(
                          fontSize: 14, fontWeight: semiBold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: familiarCard.map((e) {
                        index++;
                        return Container(
                            margin: EdgeInsets.only(left: index == 0 ? 20 : 0),
                            child: familiarImage(e));
                      }).toList(),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(defaulMargin),
                    child: Row(
                      children: [
                        Container(
                          width: 54,
                          height: 54,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/button_chat.png",
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Container(
                            height: 54,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: primaryC,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Add To Card",
                                style: primarytextstyle,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundC6,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
