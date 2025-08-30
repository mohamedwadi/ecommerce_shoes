import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeControllers extends GetxController{

  static HomeControllers get instance => Get.find();

  Rx<int> currentPageIndex = 0.obs;

  void updateIndicator(index) => currentPageIndex.value = index;
}
