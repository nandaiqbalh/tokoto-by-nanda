// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:tokoto_by_nanda/components/default_button.dart';
import 'package:tokoto_by_nanda/screens/splash/components/splash_content.dart';
import 'package:tokoto_by_nanda/screens/sign_in/sign_in_screen.dart';
import 'package:tokoto_by_nanda/size_config.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splasData = [
    {
      "image": "assets/images/splash_1.png",
      "text": "Welcome to Tokoto. Let's shop!",
    },
    {
      "image": "assets/images/splash_2.png",
      "text": "We help people connect with store \naround the world!",
    },
    {
      "image": "assets/images/splash_3.png",
      "text": "We show the easy way to shop. \nJust stay at home with us!",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splasData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splasData[index]['image'].toString(),
                  text: splasData[index]['text'].toString(),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splasData.length,
                            (index) => buildDot(index: index)),
                      ),
                      Spacer(
                        flex: 3,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: getProportionateScreenHeight(56),
                        child: DefaultButton(
                          text: "Continue",
                          press: () {
                            Navigator.pushNamed(
                                context, SignInScreen.routeName);
                          },
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(
        right: 5,
      ),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFd8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
