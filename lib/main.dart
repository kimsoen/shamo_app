import 'package:flutter/material.dart';
import 'package:shamo/pages/detail_chat_page.dart';
import 'package:shamo/pages/detail_product.dart';
import 'package:shamo/pages/edit_profile_page.dart';
import 'package:shamo/pages/home/navbar.dart';
import 'package:shamo/pages/login_page.dart';
import 'package:shamo/pages/signup_page.dart';
import 'package:shamo/pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const SplashPage(),
        "/signIn-page": (context) => const LoginPage(),
        "/signUp-page": (context) => const SignUpPage(),
        "/navbar-page": (context) => const MainPage(),
        "/Chat-page": (context) => const DetailChatPage(),
        "/edit-profile": (context) => const EditProfile(),
        "/product-page": (context) => const DetailProduct(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
