import 'package:flutter/material.dart';

class CircularCheckbox extends StatefulWidget {
  @override
  _CircularCheckboxState createState() => _CircularCheckboxState();
}

class _CircularCheckboxState extends State<CircularCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Padding(
          padding: EdgeInsets.all(4.0), // Add desired padding value
          child: Container(
            width: 24.0,
            height: 24.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isChecked ? Color(0xffb2e3b62) : Colors.transparent,
              // border: Border.all(
              //   color: isChecked ? Color(0xffb2e3b62) : Colors.grey,
              //   width: 2.0,
              // ),
            ),
            //   child: isChecked
            //       ? Icon(
            //           Icons.check,
            //           size: 16.0,
            //           color: Colors.white,
            //         )
            //       : null,
            // ),
          )),
    );
  }
}
