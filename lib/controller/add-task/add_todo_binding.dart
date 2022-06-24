import 'package:get/get.dart';
import 'package:todo_app/controller/add-task/add_todo_conto.dart';

class AddTodoBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddTodoController>(() => AddTodoController());
  }
}
