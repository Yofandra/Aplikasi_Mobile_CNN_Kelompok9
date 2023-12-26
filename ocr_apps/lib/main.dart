import 'package:flutter/material.dart';
import 'package:ocr_apps/resultPage.dart';
import 'package:ocr_apps/uploadImagePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OCR Apps',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/uploadImage',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/uploadImage': (context) => ImageUploadPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/resultPage': (context) => ResultPage(),
      },
    );
  }
}
