
import 'package:get/get.dart';
import 'package:todo_app/controller/add-task/add_todo_binding.dart';
import 'package:todo_app/controller/home/home_binding.dart';
import 'package:todo_app/screens/add-Task/add_todo_page.dart';
import 'package:todo_app/screens/home/home_page.dart';

class Routes {
  static const INITIAL = '/home';

  static final routes = [
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: '/add-task',
      page: () => const AddTaskPage(),
      binding: AddTodoBinding(),
      fullscreenDialog: true
    ),
  ];
}
