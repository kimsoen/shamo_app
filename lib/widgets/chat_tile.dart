import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shamo/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/Chat-page");
      },
      child: Container(
        margin: EdgeInsets.only(top: defaulMargin),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/image_shop_logo.png",
                  width: 54,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shoes Store",
                        style: primarytextstyle.copyWith(fontSize: 20),
                      ),
                      Text(
                        "Good night, this item is on...",
                        style: secondarytextstyle,
                      )
                    ],
                  ),
                ),
                Text(
                  "NOW",
                  style: secondarytextstyle,
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 2,
              color: Color(0xff2B2939),
            ),
          ],
        ),
      ),
    );
  }
}
