import 'package:app_mobi/layout/root_layout.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const AppMoby());
}

class AppMoby extends StatelessWidget {
  const AppMoby({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Gs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RootLayout(),
    );
  }
}

