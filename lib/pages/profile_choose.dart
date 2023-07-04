import 'package:flutter/material.dart';
import 'package:otp_auth/components/profile.dart';

class ProfileSelect extends StatelessWidget {
  const ProfileSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Text(
              "Please select your profile",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Profile(
              imagePath: 'lib/assets/images/house.png',
              description: 'Shipper',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              child: Profile(
                imagePath: 'lib/assets/images/bus.png',
                description: 'Transporter',
              ),
            ),
          ),
          GestureDetector(
            // onTap: (() => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //           builder: (context) => ProfileSelect()),
            //     )),
            child: Container(
              height: 65,
              width: double.infinity,
              color: const Color(0xffb2e3b62),
              child: const Center(
                child: Text(
                  'CONTINUE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
