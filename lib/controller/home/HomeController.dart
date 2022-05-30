import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeController  extends GetxController with StateMixin{

  final advanceDrawerController = AdvancedDrawerController();



  void handleMenuButtonPressed() {
    advanceDrawerController.showDrawer();
  }


}
