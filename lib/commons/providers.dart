import 'dart:async';
import 'package:flutter/material.dart';

class TimeDateProvider with ChangeNotifier {
  String _currentTime = '';
  String _currentDate = '';

  TimeDateProvider() {
    _updateTimeDate();
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _updateTimeDate());
  }

  String get currentTime => _currentTime;
  String get currentDate => _currentDate;

  void _updateTimeDate() {
    final now = DateTime.now();
    _currentTime = now.toLocal().toString().split(' ')[1].split('.')[0];
    _currentDate = '${now.year}-${now.month}-${now.day}';
    notifyListeners();
  }
}