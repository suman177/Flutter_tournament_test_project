import 'package:flutter/material.dart';

class TournamentsModel {
  final String tournamentHeader, location, matchBetween, time, day, imageUrl;

  TournamentsModel(
      {@required this.tournamentHeader,
      @required this.location,
      @required this.matchBetween,
      @required this.time,
      @required this.day,
      @required this.imageUrl});
}
