import 'package:flutter/material.dart';

class Language extends StatefulWidget {
  Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  String? selectedLanguage;
  final List<String> languages = [
    'English',
    'Hindi',
    'Spanish',
    'French',
    'German',
    'Italian',
    'Japanese',
    'Korean',
    'Chinese',
    'Russian',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<String>(
        isExpanded: true,
        // dropdownColor: Colors.grey,
        value: selectedLanguage,
        underline: Container(
          height: 0,
        ),
        iconEnabledColor: Colors.grey,
        iconSize: 30,
        hint: Text(
          'English',
          style: TextStyle(),
        ),
        style: TextStyle(
            color: Colors.grey[800], fontSize: 25, fontWeight: FontWeight.w400),
        onChanged: (newValue) {
          setState(() {
            selectedLanguage = newValue;
          });
        },
        items: languages.map((language) {
          return DropdownMenuItem<String>(
            value: language,
            child: Text(language),
          );
        }).toList(),
      ),
    );
  }
}
