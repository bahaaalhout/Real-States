// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.12,
      child: Container(
        padding: EdgeInsets.all(10),
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            Image(
              image: AssetImage(
                'assets/images/logo.png',
              ),
              width: 100,
            ),
            Spacer(),
            Text(
              'Real Estate',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              'Modern home with great \n interior design',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kBodyTextColor,
                height: 1.3,
                fontSize: 12,
              ),
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
