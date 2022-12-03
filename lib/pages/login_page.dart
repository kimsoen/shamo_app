import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: defaulMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "LOGIN",
            style: primarytextstyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            "Sign in to Continue",
            style: subtitleTextStyle.copyWith(),
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: const EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email Address",
            style: primarytextstyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: backgroundC2, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/icon_email.png',
                    width: 17,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFormField(
                      style: primarytextstyle.copyWith(),
                      decoration: InputDecoration.collapsed(
                          hintText: 'your Email Address',
                          hintStyle: TextStyle(color: subtitleC)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget passInput() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Password",
            style: primarytextstyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
                color: backgroundC2, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Image.asset(
                    'assets/icon_password.png',
                    width: 17,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      style: primarytextstyle.copyWith(),
                      decoration: InputDecoration.collapsed(
                          hintText: 'your password',
                          hintStyle: TextStyle(color: subtitleC)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget signinbuttom(context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: double.infinity,
      height: 50,
      decoration: const BoxDecoration(),
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: primaryC,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {},
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/navbar-page");
            },
            child: Text(
              "SIGN IN",
              style: primarytextstyle,
            ),
          )),
    );
  }

  Widget footer(context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaulMargin),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Dont't have a account? ",
            style: subtitleTextStyle.copyWith(fontSize: 12),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/signUp-page");
            },
            child: const Text(
              "Sign Up",
              style: TextStyle(color: Colors.purple, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundC1,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: defaulMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passInput(),
              signinbuttom(context),
              const Spacer(),
              footer(context),
            ],
          ),
        ),
      ),
    );
  }
}
