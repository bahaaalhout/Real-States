import 'package:flutter/material.dart';
import 'package:web_test/constants.dart';
import 'package:web_test/responsive.dart';
import 'package:web_test/widget/side_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.mainSection}) : super(key: key);
  final Widget mainSection;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu)),
              )),
      drawer: SideBar(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: kBgColor,
                      child: SideBar(),
                    ),
                  ),
                Expanded(
                  flex: 7,
                  child: mainSection,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
