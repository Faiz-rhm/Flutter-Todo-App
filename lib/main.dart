import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/route/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      getPages: Routes.routes,
      initialRoute: '/home',
      smartManagement: SmartManagement.keepFactory,
      title: 'Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      )
    );
  }
}
