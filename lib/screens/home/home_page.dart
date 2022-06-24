import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:todo_app/controller/home/home_controller.dart';
import 'package:todo_app/screens/home/widgets/app_bar.dart';
import 'package:todo_app/screens/home/widgets/drawer.dart';
import 'package:todo_app/screens/home/widgets/category.dart';
import 'package:todo_app/screens/home/widgets/floating_button.dart';
import 'package:todo_app/screens/home/widgets/todo_item.dart';
import 'package:todo_app/shared/constants/Colors.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: ColorConstants.drawerBackgroundColor,
      controller: controller.advanceDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: BoxDecoration(
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.white,
            blurRadius: 10.0,
          ),
        ],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Scaffold(
        backgroundColor: ColorConstants.homeScaffoldBackgroundColor,
        appBar:  const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBarWidget()
        ),
        body: Obx(() => _buildContainer()),
        floatingActionButton: const FloatingButton()
      ),
      drawer: const DrawerWidget(),
    );
  }

  _buildContainer() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24,  vertical:24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('What\'s up, Joy!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: ColorConstants.textColor
              ),
            ),
            const SizedBox(height: 35,),
            Text('CATEGORY',
              style: TextStyle(
                color: ColorConstants.gray200,
                fontSize: 17,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
              ),
            ),
            const CategoryWidget(),
            const SizedBox(height: 10,),
            Text('TODAY\'s TASK',
              style: TextStyle(
                color: ColorConstants.gray200,
                fontSize: 17,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
              ),
            ),
            const SizedBox(height: 20,),
            controller.todoList.isNotEmpty ? _tasks() : const SizedBox()
          ],
        ),
      ),
    );
  }

  _tasks() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: controller.todoList.length,
      itemBuilder: ((context, index) {
        return TodoItem(
	        todo: controller.todoList[index],
	        onTodoChanged: controller.handleTodoChange,
          onTodoRemove: controller.removeTodo,
	      );
      }),
	  );
  }
}
