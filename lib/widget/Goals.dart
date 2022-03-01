import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_test/constants.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Goals',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        GoalsMethod('Planning stage'),
        GoalsMethod('Development'),
        GoalsMethod('Execution phase'),
        GoalsMethod('New way of living'),
      ],
    );
  }

  Padding GoalsMethod(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: SvgPicture.asset(
              'assets/icons/check.svg',
              color: kPrimaryColor,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: kBodyTextColor,
              height: 1.3,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
