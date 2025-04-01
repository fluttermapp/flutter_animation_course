import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animations_course/pages/home_page.dart';
import '../pages/welcome_page.dart';

import 'core/constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.black12));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Cup',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: materialColor,
          backgroundColor: Colors.transparent,
        ),
      ),
      //Todo: Change for Welcome Page
      home: const HomePage(),
    );
  }
}
