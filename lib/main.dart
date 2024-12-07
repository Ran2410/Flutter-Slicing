import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:food_app/Pages/AddDataPage.dart';
import 'package:food_app/Pages/CartPage.dart';
import 'package:food_app/Pages/HomePage.dart';
import 'package:food_app/Pages/PostAdd.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());

  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Makanan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffff5f5f3)),
      routes: {
        "/": (context) => const Homepage(),
        "/CartPage": (context) => const CartPage(),
        "/HomePage": (context) => const Homepage(),
        "/PostAdd": (context) => const Postadd(),
        "/AddDataPage": (context) => const Adddatapage(),
      },
    );
  }
}
