

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:todo_app/shared/constants/Colors.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 16),
      height: 70,
      width:70,
      child: FloatingActionButton(
        backgroundColor: ColorConstants.floatingButtonColor,
        onPressed: () => Get.toNamed('/add-task'),
        child: const Icon(Iconsax.add, size: 40,),
      ),
    );
  }
}