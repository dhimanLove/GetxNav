import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Getx.dart';
import 'package:getx/Routed.dart';
import 'package:getx/error.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      //initialRoute: '/',
      //getPages: [
       // GetPage(name: '/Getx', page: () => const NavPage()),
        //GetPage(name: '/Routed', page: () => const Routed()),
     // ],
      //unknownRoute: GetPage(name: '/notfound', page: () => ErrorPage()),
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  NavPage(),
    );
  }
}