import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundC1,
        centerTitle: true,
        title: Text(
          "Message Support",
          style: primarytextstyle.copyWith(fontSize: 18),
        ),
      );
    }

    Widget envyChat() {
      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon_headset.png",
              width: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Opss no message yet?",
              style:
                  primarytextstyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "You have never done a transaction?",
              style: subtitleTextStyle.copyWith(
                  fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 44,
              child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 10),
                      backgroundColor: primaryC,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Text(
                    "Explore Store",
                    style: primarytextstyle,
                  )),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
          child: Container(
        width: double.infinity,
        color: backgroundC3,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaulMargin,
          ),
          children: const [
            ChatTile(),
          ],
        ),
      ));
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
