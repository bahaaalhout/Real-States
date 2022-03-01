// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_test/responsive.dart';

import '../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.centerLeft,
        children: [
          Image(
            image: AssetImage(
              'assets/images/background.jpg',
            ),
            fit: BoxFit.cover,
          ),
          Container(
            color: kDarkColor.withOpacity(.2),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Build a great future for\n all of us!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          )
                      : Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'CONTACT US',
                      style: TextStyle(
                        color: kDarkColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
