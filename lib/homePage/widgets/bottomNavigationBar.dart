import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:newproject/homePage/provider/homePageProvider.dart';
import 'package:newproject/homePage/widgets/customAnimatedButtomBar.dart';
import 'package:newproject/model/bottomNavyBatItem.dart';
import 'package:provider/provider.dart';

//Custom BottomNavigation bar used in HomePage
Widget buildBottomBar(BuildContext context) {
  final homePageProvider = Provider.of<HomePageProvider>(context);
  return CustomAnimatedBottomBar(
    containerHeight: 50,
    backgroundColor: Colors.black,
    selectedIndex: homePageProvider.selectedIndex,
    showElevation: true,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    itemCornerRadius: 12,
    bottomMargin: 3,
    iconSize: 18,
    curve: Curves.easeIn,
    onItemSelected: (index) {
      homePageProvider.selectedIndex = index;
    },
    items: <BottomNavyBarItem>[
      //BottomNavyBarItem custom model.
      BottomNavyBarItem(
        icon: Icon(FontAwesome.camera),
        title: Text("Events"),
        activeColor: Colors.white,
        inactiveColor: Colors.brown[800],
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        icon: Icon(FontAwesome.user_plus),
        title: Text('Requests'),
        activeColor: Colors.white,
        inactiveColor: Colors.brown[800],
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        icon: Icon(FontAwesome.sticky_note),
        title: Text('Enrollments'),
        activeColor: Colors.white,
        inactiveColor: Colors.brown[800],
        textAlign: TextAlign.center,
      ),
      BottomNavyBarItem(
        icon: Icon(Icons.notification_important_rounded),
        title: Text('Notification'),
        activeColor: Colors.white,
        inactiveColor: Colors.brown[800],
        textAlign: TextAlign.center,
      ),
    ],
  );
}
