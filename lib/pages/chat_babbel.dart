import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble(
      {super.key,
      this.textChat = "",
      this.isSender = false,
      this.hasproduct = false});

  final String textChat;
  final bool isSender;
  final bool hasproduct;

  @override
  Widget build(BuildContext context) {
    Widget chatbubbleProduk() {
      return Container(
        width: 231,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(color: backgroundC5),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    "assets/image_shoes3.png",
                    width: 70,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "COURT VISION 2.0 SHOES",
                        style: primarytextstyle,
                      ),
                      Text(
                        "\$57,15",
                        style: pricetextstyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(
                      color: primaryC,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Add To Card",
                  ),
                ),
                const SizedBox(width: 12),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      backgroundColor: primaryC,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: backgroundC5),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Column(
              children: [
                hasproduct ? chatbubbleProduk() : const SizedBox(),
                Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.6),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                    color: isSender ? backgroundC5 : backgroundC4,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(isSender ? 12 : 0),
                      topRight: Radius.circular(isSender ? 0 : 12),
                      bottomRight: const Radius.circular(12),
                      bottomLeft: const Radius.circular(12),
                    ),
                  ),
                  child: Text(
                    textChat,
                    style: primarytextstyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
