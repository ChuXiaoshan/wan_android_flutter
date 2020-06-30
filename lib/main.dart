import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/main_page.dart';

void main() {
  runApp(MyApp());

  /// Android状态栏透明
  if (Platform.isAndroid) {
    SystemUiOverlayStyle style = SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.dark);
    SystemChrome.setSystemUIOverlayStyle(style);
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.purple.shade900,
          primaryColorDark: Color(0x12005E),
          primaryColorLight: Colors.purpleAccent.shade700,
          accentColor: Colors.deepPurple.shade400),
      home: HomePage(),
    );
  }
}
