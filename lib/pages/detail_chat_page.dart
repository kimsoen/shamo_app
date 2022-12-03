import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shamo/pages/chat_babbel.dart';
import 'package:shamo/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget priviewProduct() {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 20),
        width: 225,
        height: 74,
        decoration: BoxDecoration(
            color: backgroundC1, borderRadius: BorderRadius.circular(12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/image_shoes2.png",
                width: 55,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "COURT VISIO...",
                    style: primarytextstyle.copyWith(fontWeight: medium),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "\$57,15",
                    style: pricetextstyle.copyWith(fontWeight: medium),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/button_close.png",
              width: 22,
            )
          ],
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaulMargin, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            priviewProduct(),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        color: backgroundC4,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      decoration: InputDecoration.collapsed(
                          hintText: "Typle Message...",
                          hintStyle: subtitleTextStyle),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Image.asset(
                  "assets/button_send.png",
                  width: 45,
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: const [
          ChatBubble(
            textChat: "Hi, This item is still available?",
            isSender: true,
            hasproduct: true,
          ),
          ChatBubble(
            textChat:
                "Good night, This item is only available in size 42 and 43",
            isSender: false,
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundC3,
      appBar: AppBar(
        backgroundColor: backgroundC1,
        centerTitle: false,
        title: Center(
          child: Row(
            children: [
              Image.asset(
                "assets/image_shop_logo_online.png",
                width: 35,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Shoes Store"),
                  Text("Online"),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
