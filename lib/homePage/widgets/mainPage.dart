import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:newproject/common/clipPathWidget.dart';
import 'package:newproject/constants/screenSize.dart';
import 'package:newproject/homePage/provider/homePageProvider.dart';
import 'package:newproject/homePage/styles/homePageStyles.dart';
import 'package:newproject/homePage/widgets/listViewWidgets.dart';
import 'package:provider/provider.dart';

//List of Tournaments are generated from here
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homePageProvider = Provider.of<HomePageProvider>(context);

    return Stack(
      children: [
        Container(
          height: height(context) * 0.3,
          width: double.infinity,
          color: Color(0xff2b47d8),
          child: ClipPath(
            clipper: MyCustomCardClipper(),
            child: Container(
              height: height(context) * 0.3,
              width: double.infinity,
              color: Color(0xff2740c3),
            ),
          ),
        ),
        SafeArea(
          child: Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    FontAwesome.arrow_left,
                    size: 22,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 12),
                  child: Text(
                    "Events",
                    style: HomePageStyles.headerTextWhite22(),
                  ),
                ),
              ],
            ),
          ),
        ),
        SafeArea(
            child: Container(
                padding: EdgeInsets.only(top: height(context) * 0.13),
                child: homePageProvider.state ==
                        HomePageProviderState.Initialized
                    ? Scrollbar(
                        interactive: true,
                        isAlwaysShown: true,
                        showTrackOnHover: true,
                        radius: Radius.circular(8),
                        thickness: 9,
                        hoverThickness: 9,
                        child: ListView.builder(
                            itemCount: homePageProvider.list.length,
                            itemBuilder: (BuildContext context, int index) {
                              return ListViewContainers(
                                tournamentsModel: homePageProvider.list[index],
                                index: index,
                              );
                            }),
                      )
                    : Center(
                        child: SizedBox(
                          height: 25,
                          width: 25,
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                          ),
                        ),
                      )))
      ],
    );
  }
}
