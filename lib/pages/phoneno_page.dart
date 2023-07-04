import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_auth/pages/otp_page.dart';
import 'package:otp_auth/provider/auth_provider.dart';
import 'package:provider/provider.dart';

class PhoneNo extends StatefulWidget {
  const PhoneNo({super.key});

  @override
  State<PhoneNo> createState() => _PhoneNoState();
}

class _PhoneNoState extends State<PhoneNo> {
  final TextEditingController phoneController = TextEditingController();
  Country country = Country(
      phoneCode: "91",
      countryCode: "IN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "India",
      example: "India",
      displayName: "India",
      displayNameNoCountryCode: "IN",
      e164Key: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                CloseButton(
                  color: Colors.black,
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Please enter your mobile number',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "You’ll receive a 6 digit code \n to verify next.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[800]),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
                keyboardType: TextInputType.number,
                cursorColor: Color(0xffb2e3b62),
                controller: phoneController,
                decoration: InputDecoration(
                    hintText: '  Mobile Number',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                        color: Colors.black87,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0),
                      borderSide: BorderSide(
                        color: Colors.black87,
                      ),
                    ),
                    prefixIcon: Container(
                      padding: EdgeInsets.only(top: 13, left: 10),
                      child: InkWell(
                        onTap: () {
                          showCountryPicker(
                              countryListTheme:
                                  CountryListThemeData(bottomSheetHeight: 600),
                              context: context,
                              onSelect: (value) {
                                setState(() {
                                  country = value;
                                });
                              });
                        },
                        child: Text(
                          "${country.flagEmoji}  +${country.phoneCode} - ",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                    ))),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: (() => sendPhoneNumber()
                  // Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => OTPScreen(
                  //                 phoneNo: phoneController.text,
                  //               )),
                  //     )
                  ),
              child: Container(
                height: 65,
                width: double.infinity,
                color: const Color(0xffb2e3b62),
                child: const Center(
                  child: Text(
                    'CONTINUE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void sendPhoneNumber() {
    final ap = Provider.of<AuthProvider>(context, listen: false);
    String phoneNumber = phoneController.text.trim();
    // print(phoneNumber);
    ap.signInWithPhone(context, "+${country.phoneCode}$phoneNumber");
  }
}
