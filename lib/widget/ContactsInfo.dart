import 'package:flutter/material.dart';

import '../constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        contacts('Address:', 'Station Street 5'),
        contacts('City:', 'Brisal'),
        contacts('Country:', 'Bangladesh'),
        contacts('Email:', 'Bahaa@gmail.com'),
        contacts('Mobile:', '01709799433'),
        contacts('Website:', 'my@website.com'),
      ],
    );
  }

  Widget contacts(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            subtitle,
            style: const TextStyle(
              color: kBodyTextColor,
              height: 1.3,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
