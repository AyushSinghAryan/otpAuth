import 'package:flutter/material.dart';
import 'package:otp_auth/components/lang_choose.dart';
import 'package:otp_auth/pages/phoneno_page.dart';
import 'package:otp_auth/pages/profile_choose.dart';
import 'package:otp_auth/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    final ap = Provider.of<AuthProvider>(context, listen: false);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Image.asset('lib/assets/images/Vector.png'),
                ),
                Text(
                  'Please select your Language',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                Text(
                  'You can change the language',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Text('at any time.', style: TextStyle(color: Colors.grey[700])),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                      width: 230,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Language(),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xffb2e3b62),
                        ),
                      )),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                GestureDetector(
                  onTap: () {
                    ap.isSignedIn == true
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileSelect()),
                          )
                        : Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PhoneNo()),
                          );
                  },
                  child: Container(
                    height: 60,
                    width: 230,
                    color: const Color(0xffb2e3b62),
                    child: const Center(
                      child: Text(
                        'NEXT',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              Container(
                // width: 800,
                child: Image.asset(
                  'lib/assets/images/left.png',
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                width: double.infinity,
                child: Image.asset(
                  'lib/assets/images/right.png',
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
