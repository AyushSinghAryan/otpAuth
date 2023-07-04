// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_auth/pages/profile_choose.dart';
import 'package:otp_auth/pages/user_info.dart';
import 'package:otp_auth/provider/auth_provider.dart';
import 'package:otp_auth/utils/utils.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

class OTPScreen extends StatefulWidget {
  // String? phoneNumber;
  final String verificationId;
  OTPScreen({
    Key? key,
    // this.phoneNumber,
    required this.verificationId,
  }) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  String? otpCode;
  @override
  Widget build(BuildContext context) {
    final isLoading =
        Provider.of<AuthProvider>(context, listen: true).isLoading;
    return Scaffold(
      body: Center(
        child: isLoading == true
            ? Center(
                child: CircularProgressIndicator(color: Color(0xffb2e3b62)))
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Verify Phone',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    // textAlign: TextAlign.center,
                  ),
                  Text(
                    ' Code is sent to 7007526259',
                    // textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Pinput(
                    length: 6,
                    showCursor: true,
                    defaultPinTheme: PinTheme(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color(0xffb93d3f3),
                      ),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onCompleted: (value) {
                      otpCode = value;
                    },
                  ),
                  // OtpTextField(
                  //   numberOfFields: 6,
                  //   fillColor: Color(0xffb93d3f3),
                  //   filled: true,
                  //   fieldWidth: 50,
                  //   borderRadius: BorderRadius.circular(0),
                  // ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    " Didn\’t receive the code? Request Again",
                    // textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      print(otpCode);
                      if (otpCode != null) {
                        verifyOtp(context, otpCode!);
                      } else {
                        showSnackBar(context, "Enter 6-Digit code");
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 65,
                        width: double.infinity,
                        color: const Color(0xffb2e3b62),
                        child: const Center(
                          child: Text(
                            'VERIFY AND CONTINUE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  void verifyOtp(BuildContext context, String userOtp) {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    ap.verifyOtp(
        context: context,
        verificationId: widget.verificationId,
        userOtp: userOtp,
        onSuccess: () {
          ap.checkExistingUser().then((value) async {
            if (value == true) {
              // user exists in our app
            } else {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileSelect()),
                  (route) => false);
            }
          });
        });
  }
}


// () {
//                       if (otpCode != null) {
//                         verifyOtp(context, otpCode!);
//                       } else {
//                         showSnackBar(context, "Enter 6-Digit code");
//                       }
//                     },