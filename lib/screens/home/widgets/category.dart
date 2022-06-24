import 'package:flutter/material.dart';
import 'package:todo_app/shared/constants/Colors.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              // margin: const EdgeInsets.only(left: 16),
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
                  ),
                  const SizedBox(height: 20,),
                  LinearProgressIndicator(
                    // value: controller.twinAnimation.value,
                    backgroundColor: ColorConstants.gray100,
                    valueColor: AlwaysStoppedAnimation<Color>(ColorConstants.blue200),
                    color: Colors.amberAccent,
                  ),
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