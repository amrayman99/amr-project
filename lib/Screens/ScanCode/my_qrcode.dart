import 'package:egycare/Screens/SignUp/signup_screen.dart';
import 'package:egycare/Screens/home_screen.dart';
import 'package:egycare/components/already_have_an_account_check.dart';
import 'package:egycare/components/custom_textField.dart';
import 'package:egycare/components/password_textField.dart';
import 'package:egycare/components/rounded_button.dart';
import 'package:egycare/constants.dart';
import 'package:egycare/services/local_helper.dart';
import 'package:egycare/services/network_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_messaging/firebase_messaging.dart';



class MyQr extends StatefulWidget {
  @override
  _MyQrState createState() => _MyQrState();
}

class _MyQrState extends State<MyQr> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[

              Column(
                children: <Widget>[
                  SizedBox(height: size.height * 0.25),
                  Image.asset(
                    "assets/images/qrcode2.png",
                    height: size.height * 0.4,
                    width: size.width * 0.75,
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
