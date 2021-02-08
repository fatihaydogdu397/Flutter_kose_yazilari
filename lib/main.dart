import 'package:flutter/material.dart';
import 'package:kose_yazilari/core/widgets/navbar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';


void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light, // Change it as you want
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primaryColor: Colors.grey[200],
        primaryColorBrightness: Brightness.light,
        brightness: Brightness.light,
        primaryColorDark: Colors.black,
        canvasColor: Colors.grey[350],
        // next line is important!
        appBarTheme: AppBarTheme(brightness: Brightness.light)),
    darkTheme: ThemeData(
        primaryColor: Colors.black87,
        primaryColorBrightness: Brightness.dark,
        primaryColorLight: Colors.black,
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,      
        indicatorColor: Colors.white,
        canvasColor: Colors.black,
        // next line is important!
        appBarTheme: AppBarTheme(brightness: Brightness.dark)),
      home: NavbarRoute(),
    );
  }
}
