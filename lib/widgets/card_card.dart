import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class CardCard extends StatelessWidget {
  const CardCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaulMargin),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: backgroundC5, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(
                      "assets/image_shoes.png",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Terrex Urban Low",
                      style: primarytextstyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    Text(
                      "\$143,98",
                      style: pricetextstyle,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/button_add.png",
                    width: 16,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "2",
                    style: primarytextstyle.copyWith(fontSize: 12),
                  ),
                  const SizedBox(height: 2),
                  Image.asset(
                    "assets/button_min.png",
                    width: 16,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset(
                "assets/icon_remove.png",
                width: 10,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "REMOVE",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
