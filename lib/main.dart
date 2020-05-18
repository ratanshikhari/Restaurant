import 'package:flutter/material.dart';
import 'package:trial/Theme/Color.dart';
import 'package:trial/View/Root.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
          fontFamily: "RalewatMedium",
          primaryColor: primaryColor,
          primaryIconTheme: IconThemeData(
              color: Colors.white
          ),
          primarySwatch: Colors.green,
          primaryTextTheme: TextTheme(
            title: TextStyle(
                color: Colors.white
            ),

          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: primaryColor
          )
      ),
      title: "Foody",
      home: Root(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{'/root': (context) => Root()},
    );
  }
}
