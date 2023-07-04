// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:otp_auth/components/circular_checkbox.dart';

import '../model/profile_fields.dart';

class Profile extends StatefulWidget {
  String imagePath;
  String description;
  Profile({
    Key? key,
    required this.imagePath,
    required this.description,
  }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffb2e3b62),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xffb2e3b62),
                  width: 2,
                ),
              ),
              child: CircularCheckbox(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Image.asset(
                widget.imagePath,
                width: 50,
                fit: BoxFit.fill,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.description,
                  style: TextStyle(fontSize: 23),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('Lorem ipsum dolor sit amet,'),
                Text('consectetur adipiscing')
              ],
            )
          ],
        ),
      ),
    );
  }
}
