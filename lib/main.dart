import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


import 'home_screen.dart';
import 'login/google_sign_in.dart';

Future<void> main() async
{
  await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyByi18hlsXzhK1pL_xq_OpTnSWQ1W_SCuk",
        authDomain: "leptonscipro-31792.firebaseapp.com",
        projectId: "leptonscipro-31792",
        storageBucket: "leptonscipro-31792.appspot.com",
        messagingSenderId: "974571096401",
        appId: "1:974571096401:web:51ab185bc5a96d5e9a6b70",
        measurementId: "G-C70G5S6HNB",)
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: MaterialScrollBehavior().copyWith(
          dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch, PointerDeviceKind.stylus, PointerDeviceKind.unknown},),

        title: 'SciPRO',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/home': (context) =>  HomeScreen(),
        },
        home: LoginScreen()
    );
  }
}


