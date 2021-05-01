
import 'package:flutter/material.dart';


import 'package:disenos/src/screens/basic_desing.dart';
import 'package:disenos/src/screens/scroll_desing.dart';
import 'package:disenos/src/screens/home_screen.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent 
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Diseño',
      initialRoute: 'home_screen',
      routes: {
        'basic_desing'  : ( _ ) => BasicDesingScreen(),
        'scroll_desing'  : ( _ ) => ScrollScreen(),
        'home_screen'  : (BuildContext context) => HomeScreen(),
      },
    );
  }
}