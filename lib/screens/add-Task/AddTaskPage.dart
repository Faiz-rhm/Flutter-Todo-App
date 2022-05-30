import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:iconsax/iconsax.dart';
import 'package:todo_app/shared/constants/Colors.dart';

class AddTaskPage extends StatelessWidget {
  const AddTaskPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.homeScaffoldBackgroundColor,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 16, right: 16),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.only(right: 20),
                alignment: Alignment.topRight,
                child: InkWell(
                  borderRadius: BorderRadius.circular(50),
                  onTap: () => Get.back(),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: ColorConstants.iconColor,
                        width: 2
                      ),
                    ),
                    child: Icon(Icons.close, size: 25, color: ColorConstants.drawerBackgroundColor,),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:30.0),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      style: TextStyle(
                        fontSize: 30,
                        color: ColorConstants.textColor,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Enter New Task',
                        hintStyle: TextStyle(
                          color: ColorConstants.iconColor,
                          fontSize: 30,
                        ),
                        labelStyle: TextStyle(
                          color: ColorConstants.iconColor,
                          fontSize: 30,
                        ),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(
                          height: 60,
                          width: 170,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                )
                              ),
                            ),
                            clipBehavior: Clip.antiAlias,
                            onPressed: (){},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                children: [
                                  Icon(IconlyLight.calendar, color: ColorConstants.iconColor, size: 30,),
                                  const SizedBox(width: 15,),
                                  Text('Today', style: TextStyle(color: ColorConstants.iconColor, fontSize: 20),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 15,),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: OutlinedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                )
                              ),
                            ),
                            clipBehavior: Clip.antiAlias,
                            onPressed: (){},
                            child: Transform.scale(
                              scale: 1.5,
                              child: Radio(
                                value: true,
                                groupValue: true,
                                onChanged: (value){},
                              ),
                            )
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 80,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Iconsax.folder_add, color: ColorConstants.iconColor, size: 30,),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Iconsax.flag4, color: ColorConstants.iconColor, size: 30,),
                        ),
                        IconButton(
                          onPressed: (){},
                          icon: Icon(Iconsax.moon, color: ColorConstants.iconColor, size: 30,),
                        )
                      ],
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.only(right: 16),
        height: 70,
        child: FloatingActionButton.extended(
          backgroundColor: ColorConstants.floatingButtonColor,
          onPressed: (){},
          label: Row(
            children: const [
              Text('New task', style: TextStyle(fontSize:18),),
              SizedBox(width: 20,),
              Icon(IconlyLight.arrow_up_2, size: 25,),
            ],
          ),
          extendedIconLabelSpacing: 5.0,
          extendedPadding: const EdgeInsets.all(30),
        ),
      ),
    );
  }
}
