import 'package:get/get.dart';
import 'package:todo_app/controller/add-task/AddTaskController.dart';

class AddTaskBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddTaskController>(() => AddTaskController());
  }
}
