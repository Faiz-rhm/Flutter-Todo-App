import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:todo_app/model/Todo.dart';

class HomeController  extends GetxController with GetSingleTickerProviderStateMixin{

  final advanceDrawerController = AdvancedDrawerController();

  final GlobalKey<AnimatedListState> key = GlobalKey();

  final todoList = <Todo>[].obs;

  void addToDo(String name) {
    Get.back();
    todoList.add(Todo(name: name, checked: false));

    // key.currentState!.insertItem(0, duration: const Duration(seconds: 1));
    // key.currentState!.insertItem(0, duration: const Duration(milliseconds: 300));
    // print(toDoList);
  }

  void removeTodo(Todo todo){
    todoList.remove(todo);
    // key.currentState!.removeItem(todo, (context, animation) {
    //   return SizeTransition(
    //     sizeFactor: animation,
    //     child: const Text('Remove'),
    //   );
    // });
  }

  void handleMenuButtonPressed() {
    advanceDrawerController.showDrawer();
  }

  void handleTodoChange(Todo todo) {
    print(todo);
    print(!todo.checked);
	  todo.checked == !todo.checked;
    print(todoList);
  }
}
