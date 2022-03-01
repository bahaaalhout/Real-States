// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_test/Models/Project_Data.dart';
import 'package:web_test/Screens/Home_screen.dart';
import 'package:web_test/constants.dart';
import 'package:web_test/widget/Projects.dart';
import 'package:web_test/widget/client_Info.dart';

import 'homeBanner.dart';
import 'iconInfo.dart';

class mainSection extends StatelessWidget {
  const mainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HomeBanner(),
            iconInfo(),
            ProjectInfo(),
            SizedBox(
              height: 20,
            ),
            ClientInfo(),
          ],
        ),
      ),
    );
  }
}
