import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/sign_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
    apiKey: 'AIzaSyAbSqVIMLRP4MRQ1DOkM22yl-1mMsRw2Sc',
    appId: '1:479272309580:android:560531ea8e81dfd024f5e9',
    messagingSenderId: '479272309580',
    projectId: 'job-vacancy-b393a',
    storageBucket: 'job-vacancy-b393a.appspot.com',
    authDomain: 'job-vacancy-b393a.firebaseapp.com'
  ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterFire Samples',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: SignInScreen(),
    );
  }
}
