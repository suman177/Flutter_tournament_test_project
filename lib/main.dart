import 'package:flutter/material.dart';
import 'package:newproject/homePage/provider/homePageProvider.dart';
import 'package:provider/provider.dart';

import 'homePage/homePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomePageProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Test App',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scrollbarTheme: ScrollbarThemeData().copyWith(
                thumbColor: MaterialStateProperty.all(Color(0xff5d1049)))),
        //The first screen to draw after MaterialApp.
        home: HomePage(),
      ),
    );
  }
}
