import 'package:flutter/material.dart';

class BottomNavigationBarModel {
  List<BottomNavigationBarItem> _bottomNavigationBarItem = [
    BottomNavigationBarItem(icon: Icon(Icons.lunch_dining), label: 'Dashboard'),
    BottomNavigationBarItem(icon: Icon(Icons.lunch_dining), label: 'Orders'),
    BottomNavigationBarItem(icon: Icon(Icons.lunch_dining), label: 'Settings'),
  ];

  get getBottomNavBarItems => _bottomNavigationBarItem;
}
