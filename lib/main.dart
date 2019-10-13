import 'package:flutter_web/material.dart';
import 'package:flutter_web_portfolio/src/screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ashish Rawat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.black, fontFamily: "GoogleSans"),
      home: Home(),
    );
  }
}
