import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:pos_system/common/constant.dart';
import 'package:pos_system/common/strings.dart';
import 'package:pos_system/controller/btm_nav_bar_controller.dart';
import 'package:pos_system/model/bottom_navigation_bar_model.dart';

class ViewManager extends StatelessWidget {
  //TODO(marwa):: login page should land the app here
  @override
  Widget build(BuildContext context) {
    final BtmNavBarController _btmNavController =
        Get.put(BtmNavBarController());
    BottomNavigationBarModel _btmBarItems = BottomNavigationBarModel();
    List<Widget> _body = [
      Text('Dashboard'),
      Text('Orders'),
      Text('Settings'),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          Strings.get('appBarTitle').toUpperCase(),
        ),
      ),
      body:
          Obx(() => Center(child: _body.elementAt(_btmNavController.getIndex))),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          selectedItemColor: kPrimaryColor,
          items: _btmBarItems.getBottomNavBarItems,
          currentIndex: _btmNavController.getIndex,
          onTap: (index) => _btmNavController.setIndex = index,
        ),
      ),
    );
  }
}
