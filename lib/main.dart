import 'package:flutter/material.dart';
import 'package:shop_flutter/views/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Shop Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePageView());
  }
}
