import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:todo_app/controller/home/home_controller.dart';
import 'package:todo_app/shared/constants/Colors.dart';

class DrawerWidget extends GetView<HomeController> {
  const DrawerWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: ColorConstants.iconDrawerColor,
        contentPadding: const EdgeInsets.symmetric(horizontal:65),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            Container(
              padding: const EdgeInsets.only(right: 20),
              alignment: Alignment.topRight,
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () => controller.advanceDrawerController.hideDrawer(),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: ColorConstants.iconDrawerColor,
                      width: 2
                    ),
                  ),
                  child:  const Icon(IconlyLight.arrow_left_2, color: Colors.white,),
                ),
              ),
            ),
            // TweenAnimationBuilder<double>(
            //   tween: Tween<double>(begin: 0.0, end: 0.3),
            //   duration: const Duration(milliseconds: 5000),
            //   builder: (context, value, _) => CircularProgressIndicator(
            //     value: value,
            //     color: Colors.white,
            //     backgroundColor: Colors.black,
            //     valueColor:AlwaysStoppedAnimation<Color>(ColorConstants.iconDrawerColor),
            //     semanticsLabel: 'Loading',
            //     semanticsValue: 'Loading',
            //   ),
            // ),
            Container(
              width: 128.0,
              height: 128.0,
              margin: const EdgeInsets.only(
                left: 65,
                top: 0.0,
                bottom:10.0,
              ),
              padding: const EdgeInsets.all(5),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.black26,
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorConstants.iconDrawerColor,
                  width: 3
                ),
              ),
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  color: Colors.black26,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/profile.jpg',
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.only(left: 65),
              child: Text('Joy\nMitchell',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
            const SizedBox(height: 20,),
            ListTile(
              onTap: () {},
              leading: const Icon(Iconsax.category),
              title: const Text('Category'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Iconsax.category),
              title: const Text('Category'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Iconsax.align_vertically),
              title: const Text('Analytics'),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Iconsax.setting),
              title: const Text('Settings'),
            ),
            // const Spacer(),
            Container(

            ),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Text('Good',
                style: TextStyle(
                  color: ColorConstants.iconDrawerColor,
                  fontSize: 15
                ),
              )
            ),
            const SizedBox(height: 5,),
            const Padding(
              padding: EdgeInsets.only(left: 65),
              child: Text('Consistency',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),
              )
            ),
            const SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
