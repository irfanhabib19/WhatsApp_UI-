import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:whatsapp_ui/Screens/mobile_scrennLayout.dart';
import 'package:whatsapp_ui/Screens/web_screenLayout.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/responsive/responsive_layout.dart';

void main() {
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: ResponsiveLayout(
          mobileScreen: MobileScreenLayout(), webScreen: WebScreenlayout()),
    );
  }
}
