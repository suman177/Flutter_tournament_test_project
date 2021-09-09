import 'package:flutter/material.dart';
import 'package:newproject/model/tournamentModel.dart';

enum HomePageProviderState { Uninitialized, Initialized }

class HomePageProvider with ChangeNotifier {
  //Create 20 models using generate method
  List<TournamentsModel> list;
  //Returns the selected index of the navigation bar.
  int _selectedIndex = 0;
  //State of the app if initialized or not
  HomePageProviderState _state = HomePageProviderState.Uninitialized;

  HomePageProvider() {
    list = List<TournamentsModel>.generate(
        15,
        (index) => TournamentsModel(
            tournamentHeader: "Tournament $index",
            location: "Match No. $index ",
            matchBetween: "B$index vs A$index",
            time: "$index Time",
            day: "$index Day",
            imageUrl: "https://via.placeholder.com/150"));
    _state = HomePageProviderState.Initialized;
  }

  //Get State of HomepageProvider if initialized or not
  HomePageProviderState get state => _state;

  //Getter for selected Index
  int get selectedIndex => _selectedIndex;

  //Setter for selected Index
  set selectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
