import 'package:flutter/material.dart';
import 'package:web_test/Models/Project_Data.dart';
import 'package:web_test/constants.dart';

class projectCard extends StatelessWidget {
  const projectCard({Key? key, required this.project}) : super(key: key);
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('${project.image}'),
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${project.title}',
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            '${project.description}',
            style: const TextStyle(
              color: kBodyTextColor,
              height: 1.3,
              fontSize: 10,
            ),
          ),
          SizedBox(
            height: 7,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'More details >',
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
