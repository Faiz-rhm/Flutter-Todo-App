import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:todo_app/controller/home/HomeController.dart';
import 'package:todo_app/screens/home/widgets/AppBarWidget.dart';
import 'package:todo_app/screens/home/widgets/DrawerWidget.dart';
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
        body: _buildContainer(),
        floatingActionButton: Container(
          padding: const EdgeInsets.only(right: 16),
          height: 90,
          width: 90,
          child: FloatingActionButton(
            backgroundColor: ColorConstants.floatingButtonColor,
            onPressed: () => Get.toNamed('/add-task'),
            child: const Icon(Iconsax.add, size: 40,),
          ),
        ),
      ),
      drawer: const DrawerWidget(),
    );
  }

  _buildContainer() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
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
              ],
            ),
          ),
          _category(),
          const SizedBox(height: 10,),
          _tasks(),
        ],
      ),
    );
  }

  _tasks() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('TODAY\'s TASK',
            style: TextStyle(
              color: ColorConstants.gray200,
              fontSize: 17,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w400
            ),
          ),
          const SizedBox(height: 25,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Row(
              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 8.0),
                   child: Transform.scale(
                    scale: 2,
                    child: Checkbox(
                      value: true,
                      shape: const CircleBorder(),
                      side: BorderSide(
                        color: ColorConstants.lineColorTwo,
                        width: 1
                      ),
                      fillColor: MaterialStateColor.resolveWith((states) {
                        return states.contains(MaterialState.selected) ? ColorConstants.gray100 : ColorConstants.lineColorTwo;
                      }),
                      onChanged: (value) {
                        // controller.setProfileStatus('employed-not-looking');
                      },
                      splashRadius: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Text('Daily meeting with team',
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorConstants.textColor
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16)
            ),
            child: Row(
              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 8.0),
                   child: Transform.scale(
                    scale: 2,
                    child: Checkbox(
                      value: true,
                      shape: const CircleBorder(),
                      side: BorderSide(
                        color: ColorConstants.lineColorTwo,
                        width: 1
                      ),
                       fillColor: MaterialStateColor.resolveWith((states) {
                        return states.contains(MaterialState.selected) ? ColorConstants.gray100 : ColorConstants.lineColorOne;
                      }),
                      onChanged: (value) {
                        // controller.setProfileStatus('employed-not-looking');
                      },
                      splashRadius: 15,
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Text('Daily meeting with team',
                  style: TextStyle(
                    fontSize: 20,
                    color: ColorConstants.textColor
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _category() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SizedBox(
        height: 180,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 230,
              height: 150,
              margin: const EdgeInsets.only(left: 16),
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.gray50,
                    blurRadius: 20.0,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('40 Task',
                    style: TextStyle(
                      fontSize: 15,
                      color: ColorConstants.gray200
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text('Business',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.textColor
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 230,
              height: 150,
              margin: const EdgeInsets.only(left: 16),
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: ColorConstants.gray50,
                    blurRadius: 20.0,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('40 Task',
                    style: TextStyle(
                      fontSize: 15,
                      color: ColorConstants.gray200
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Text('Business',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.textColor
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
