import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:structure/screens/home/view_model/events/home_events.dart';

final homeProvider = ChangeNotifierProvider<HomeNotifier>((ref) {
  return HomeNotifier();
});

class HomeNotifier extends ChangeNotifier {
  HomeNotifier() : super(){
    print('object');
  }
  
  final AddCounter _addCounter = const AddCounter();


  void onAddCounter() {
    _addCounter;
  }


}