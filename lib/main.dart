import 'package:flutter/material.dart';
import 'package:flutter_web_sample/navigation/not_found.dart';
import 'package:flutter_web_sample/navigation/settings.dart';

import 'screens/links_landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      // home: const LinksLandingPage(),
      initialRoute: '/',
      routes: {
        '/':(context) => const LinksLandingPage(),
        '/settings':(context) => const Settings(),
      },
      onUnknownRoute: (ur) => MaterialPageRoute(builder: (context) => const NotFound()),
    );
  }
}

