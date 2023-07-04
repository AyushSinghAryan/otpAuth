import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:otp_auth/components/circular_checkbox.dart';
// import 'package:otp_auth/components/profile.dart';
import 'package:otp_auth/pages/intro_page.dart'; ////
// import 'package:otp_auth/pages/otp_page.dart';
// import 'package:otp_auth/pages/profile_choose.dart';
import 'package:otp_auth/provider/auth_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
          useMaterial3: true,
        ),
        home: IntroPage(),
      ),
    );
  }
}
