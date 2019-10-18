import 'package:flutter/material.dart';
import 'package:college_fest/fest_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "SVIT",
        theme: new ThemeData(
          primaryColor: new Color(0xff212121),
          accentColor: new Color(0xff95C4DE),
        ),
        home: new FestHome(),
        debugShowCheckedModeBanner: false,
      );
  }

}