import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class NewArrivalProduct extends StatelessWidget {
  const NewArrivalProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaulMargin,
        right: defaulMargin,
        bottom: defaulMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/image_shoes.png",
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "football",
                      style: secondarytextstyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Predator 20.3 Firm Ground",
                      style: primarytextstyle.copyWith(
                          fontSize: 18, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "\$68,47",
                      style: pricetextstyle.copyWith(
                          fontSize: 18, fontWeight: semiBold),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
