import 'package:flutter/material.dart';
import '../theme.dart';

class WishlistProduct extends StatelessWidget {
  const WishlistProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 84,
      margin: EdgeInsets.only(
        top: defaulMargin,
        left: defaulMargin,
        right: defaulMargin,
      ),
      decoration: BoxDecoration(
        color: backgroundC3,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              "assets/image_shoes4.png",
              width: 60,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Terrex Urban Low",
                  style: primarytextstyle.copyWith(
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "\$143,98",
                  style: pricetextstyle,
                )
              ],
            ),
          ),
          Image.asset(
            "assets/button_wishlist_blue.png",
            width: 34,
          ),
        ],
      ),
    );
  }
}
