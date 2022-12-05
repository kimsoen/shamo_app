import 'package:flutter/material.dart';
import 'package:shamo/pages/home/chat_page.dart';
import 'package:shamo/pages/home/home_page.dart';
import 'package:shamo/pages/home/profile_page.dart';
import 'package:shamo/pages/home/wistlest_page.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

int currenIndex = 0;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    Widget cardButton() {
      return FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/card-page");
        },
        child: Image.asset(
          "assets/icon_cart.png",
          width: 22,
        ),
      );
    }

    Widget customBavBar() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: backgroundC1,
            currentIndex: currenIndex,
            onTap: (value) {
              setState(() {
                currenIndex = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Image.asset(
                      "assets/icon_home.png",
                      width: 20,
                      color:
                          currenIndex == 0 ? primaryC : const Color(0x926B6B6D),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Image.asset(
                      "assets/icon_chat.png",
                      width: 20,
                      color:
                          currenIndex == 1 ? primaryC : const Color(0x926B6B6D),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Image.asset(
                      "assets/icon_wishlist.png",
                      width: 20,
                      color:
                          currenIndex == 2 ? primaryC : const Color(0x926B6B6D),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Image.asset(
                      "assets/icon_profile.png",
                      width: 20,
                      color:
                          currenIndex == 3 ? primaryC : const Color(0x926B6B6D),
                    ),
                  ),
                  label: ''),
            ],
          ),
        ),
      );
    }

    Widget pages() {
      switch (currenIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const ChatPage();
        case 2:
          return const WishlistPage();
        case 3:
          return const ProfilePage();
        default:
          return const MainPage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundC1,
      floatingActionButton: cardButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBavBar(),
      body: pages(),
    );
  }
}
