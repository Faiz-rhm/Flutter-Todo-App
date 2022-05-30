import 'package:get/get.dart';
import 'package:todo_app/controller/home/HomeController.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
