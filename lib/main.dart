import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'pages/utama1.dart';
import 'package:flutter/foundation.dart';
void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode, 
      builder: (contex)=>const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LOGIN PAGE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Utama1(),
    );
  }
}