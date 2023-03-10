
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shop_flutter/views/home_page_view.dart';

void main() => runApp(
  DevicePreview(
    enabled: false,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
        title: 'Curso de Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePageView());
  }
}
