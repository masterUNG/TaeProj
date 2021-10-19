import 'package:flutter/material.dart';
import 'package:taeproj/bodys/main_page.dart';
import 'package:taeproj/states/main_home.dart';
import 'package:taeproj/utility/my_constant.dart';


Map<String, WidgetBuilder> map = {
  '/mainHome': (BuildContext context) => const MainHome(),
  // '/testMainPage':(BuildContext context)=> const MainPage(),
};

String? firstState;

void main() {
  firstState = MyConstant.routeMainHome;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: firstState,
    );
  }
}
