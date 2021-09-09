import 'package:flutter/material.dart';
import 'package:newproject/homePage/provider/homePageProvider.dart';
import 'package:newproject/homePage/styles/homePageStyles.dart';
import 'package:newproject/homePage/widgets/bottomNavigationBar.dart';
import 'package:newproject/homePage/widgets/mainPage.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  //Home Page uses buildBottomBar as bottom Navigation Bar
  //Widget visible is the selected from widgetOption according to index selected in bottomNavigation Bar
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomePageProvider>(context);
    return Scaffold(
        bottomNavigationBar: buildBottomBar(context),
        body: _widgetOptions[provider.selectedIndex]);
  }

  //List of Widgets to show in HomeScreen According to Bottom Navigation Bar
  final List<Widget> _widgetOptions = <Widget>[
    MainPage(),
    Container(
      child: Center(
        child: Text(
          'Index 1: Request',
          style: HomePageStyles.indexText(),
        ),
      ),
    ),
    Container(
      child: Center(
        child: Text(
          'Index 2: Enrollments',
          style: HomePageStyles.indexText(),
        ),
      ),
    ),
    Container(
      child: Center(
        child: Text(
          'Index 3: Notification',
          style: HomePageStyles.indexText(),
        ),
      ),
    ),
  ];
}
