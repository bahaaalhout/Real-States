// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_test/constants.dart';
import 'package:web_test/widget/ContactsInfo.dart';
import 'package:web_test/widget/Goals.dart';

import 'Logo.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          Logo(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  children: [
                    ContactInfo(),
                    Divider(),
                    Goals(),
                    Divider(),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/download.svg'),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Download Brochure',
                              style: TextStyle(
                                color: kBodyTextColor,
                                height: 1.3,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        color: kSecondaryColor,
                        child: Row(
                          children: [
                            Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset('assets/icons/twitter.svg'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: SvgPicture.asset('assets/icons/github.svg'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset('assets/icons/linkedin.svg'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset('assets/icons/dribble.svg'),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
