import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:newproject/common/cachedNetworkImage.dart';
import 'package:newproject/common/clipPathWidget.dart';
import 'package:newproject/homePage/styles/homePageStyles.dart';
import 'package:newproject/model/tournamentModel.dart';

class ListViewContainers extends StatelessWidget {
  final TournamentsModel tournamentsModel;
  final int index;

  const ListViewContainers(
      {Key key, @required this.tournamentsModel, @required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, top: 10, right: 30, bottom: 10),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: NetworkImageView(
                photoUrl: tournamentsModel.imageUrl, radius: 40),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 15.0),
                child: Text(
                  tournamentsModel.tournamentHeader,
                  style: HomePageStyles.textHeaderBlack16(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FontAwesome.location_arrow,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        tournamentsModel.location,
                        style: HomePageStyles.textDataBlack13(),
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        FontAwesome.futbol_o,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        tournamentsModel.matchBetween,
                        style: HomePageStyles.textDataBlack13(),
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Container(
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.calendar_today_rounded,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Reported At:",
                            style: HomePageStyles.textDataBlack13(),
                          ),
                          Text(
                            "${tournamentsModel.day}, ${tournamentsModel.time}",
                            style: HomePageStyles.textDataBlack13(),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Visibility(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // width: 15,
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      child: Text("Enroll",
                          style: HomePageStyles.textBarTextWhite()),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                    ),
                    ClipPath(
                      clipper: CustomTriangleClipper(),
                      child: Container(
                        height: 20,
                        width: 20,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                visible: index == 0,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Icon(
                  Icons.note_add_rounded,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(20),
                    primary: Colors.blue,
                    onPrimary: Colors.red),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// class ContainerItems extends StatelessWidget()
