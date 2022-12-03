import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  Widget nameInput() {
    return Container(
      margin: EdgeInsets.only(top: defaulMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "name",
            style: secondarytextstyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primarytextstyle,
            decoration: InputDecoration(
              hintText: "imam tirtayasa",
              hintStyle: primarytextstyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleC,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget usernameInput() {
    return Container(
      margin: EdgeInsets.only(top: defaulMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "username",
            style: secondarytextstyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primarytextstyle,
            decoration: InputDecoration(
              hintText: "@imamtirta",
              hintStyle: primarytextstyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleC,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(top: defaulMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email Address",
            style: secondarytextstyle.copyWith(
              fontSize: 13,
            ),
          ),
          TextFormField(
            style: primarytextstyle,
            decoration: InputDecoration(
              hintText: "imamtirtayasa@gmail.com",
              hintStyle: primarytextstyle,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: subtitleC,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget content() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: defaulMargin,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image_profile.png"))),
          ),
          nameInput(),
          usernameInput(),
          emailInput()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundC1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
        title: const Text("Edit Profile"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check,
            ),
          ),
        ],
      ),
      backgroundColor: backgroundC3,
      resizeToAvoidBottomInset: false,
      body: content(),
    );
  }
}
