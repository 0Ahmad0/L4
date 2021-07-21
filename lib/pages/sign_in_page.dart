import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_ui_4a/constants/const.dart';
import 'package:login_ui_4a/pages/sign_up_page.dart';
import 'package:login_ui_4a/widgets/build_button.dart';
import 'package:login_ui_4a/widgets/build_textfiled.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
              width: double.infinity,
              height: size.width * 0.4,
              alignment: AlignmentDirectional.center,
              child: Stack(
                children: [
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  Center(
                    child: Text.rich(
                        TextSpan(style: TextStyle(
                          height: .8,
                          letterSpacing: size.width *0.006,
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * 0.12,
                        ), children: [
                      TextSpan(
                          text: 'pas',
                          style: TextStyle(
                              color: KColor1,
                          )),
                      TextSpan(
                          text: 'Ket',
                          style: TextStyle(
                              color: KColor2,
                          )),
                    ])),
                  ),
                ],
              )),
          Container(
            width: double.infinity,
            height: size.width * 1.4,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/images/content.png'))),
            child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: 5.0),
              width: size.width,
              height: size.width,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    KColor1,
                    KColor2,
                  ])),
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      'Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: size.width * 0.07,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    BuildTextFiled(
                      size: size,
                      text: 'Username',
                    ),
                    BuildTextFiled(
                      size: size,
                      text: '********',
                    ),
                    BuildButton(
                      size: size,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'No Account yet?',
                style: TextStyle(
                  fontSize: size.width * 0.055,
                  fontWeight: FontWeight.w400,
                  color: Color(0xffA5A5A5),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (ctx)=>SignUpPage()));
                },
                child: Text('Create One',style: TextStyle(
                  fontSize: size.width * 0.055,
                  fontWeight: FontWeight.w400,
                  color: KColor2,
                ),),
              )
            ],
          )
        ],
      ),
    );
  }
}
