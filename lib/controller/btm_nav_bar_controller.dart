import 'package:get/get.dart';

class BtmNavBarController extends GetxController {
  var _selectedIndex = 0.obs;

  get getIndex => _selectedIndex.value;
  set setIndex(int index) => this._selectedIndex.value = index;
}
