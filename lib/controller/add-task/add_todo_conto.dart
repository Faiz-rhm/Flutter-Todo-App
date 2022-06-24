import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/home/home_controller.dart';

class AddTodoController extends GetxController with StateMixin{

  final HomeController _homeController = Get.find();

  final todoController = TextEditingController();


  void addToDo() {
    _homeController.addToDo(todoController.text);
  }
}
