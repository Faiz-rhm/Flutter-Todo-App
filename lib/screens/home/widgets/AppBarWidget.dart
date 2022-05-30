import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:todo_app/controller/home/HomeController.dart';
import 'package:todo_app/shared/constants/Colors.dart';

class AppBarWidget extends GetView<HomeController> {
  const AppBarWidget({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorConstants.homeScaffoldBackgroundColor,
      leading: IconButton(
        onPressed: controller.handleMenuButtonPressed,
        icon: ValueListenableBuilder<AdvancedDrawerValue>(
          valueListenable: controller.advanceDrawerController,
          builder: (_, value, __) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 250),
              child: Icon(
                value.visible ? Iconsax.activity : IconlyLight.category,
                key: ValueKey<bool>(value.visible),
                color: ColorConstants.iconColor,
              ),
            );
          },
        ),
      ),
      actions: [
        IconButton(
          onPressed: (){ },
          icon: Icon(IconlyLight.search, color: ColorConstants.iconColor,),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0, left: 10),
          child: IconButton(
            onPressed: (){ },
            icon: Icon(IconlyLight.notification, color: ColorConstants.iconColor),
          ),
        )
      ],
    );
  }
}
