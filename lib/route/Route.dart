
import 'package:get/get.dart';
import 'package:todo_app/controller/add-task/AddTastBinding.dart';
import 'package:todo_app/controller/home/HomeBinding.dart';
import 'package:todo_app/screens/add-Task/AddTaskPage.dart';
import 'package:todo_app/screens/home/HomePage.dart';

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
      binding: AddTaskBinding(),
      fullscreenDialog: true
    ),
  ];
}
