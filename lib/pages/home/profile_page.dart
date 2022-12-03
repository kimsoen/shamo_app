import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundC1,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: SafeArea(
          child: Container(
            margin: EdgeInsets.all(defaulMargin),
            child: Row(
              children: [
                ClipOval(
                  child: Image.asset(
                    "assets/image_profile.png",
                    width: 64,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hallo,Alex",
                        style: primarytextstyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        "@alexkeinn",
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/signIn-page', (route) => false);
                  },
                  child: Image.asset(
                    "assets/button_exit.png",
                    width: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget menuitems(String text) {
      return Container(
        padding: const EdgeInsets.only(top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: secondarytextstyle.copyWith(
                fontSize: 13,
              ),
            ),
            const Icon(Icons.chevron_right)
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundC4,
          padding: EdgeInsets.symmetric(horizontal: defaulMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Account",
                style: primarytextstyle.copyWith(
                    fontWeight: semiBold, fontSize: 16),
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/edit-profile');
                  },
                  child: menuitems("Edit Profile")),
              menuitems("Your Orders"),
              menuitems("Help"),
              const SizedBox(height: 20),
              Text(
                "General",
                style: primarytextstyle.copyWith(
                    fontWeight: semiBold, fontSize: 16),
              ),
              menuitems("Privacy & Policy"),
              menuitems("Term of Service"),
              menuitems("Rate App"),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
