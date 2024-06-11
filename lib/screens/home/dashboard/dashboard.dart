import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/screens/common/colors/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../controller/appbar_controller.dart';

class DashBoard extends StatelessWidget {
  AppbarController appbarController = Get.put(AppbarController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Obx(()=>
        Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: size.width,
              height: 100,
              decoration: BoxDecoration(
                  color:
                      appbarController.islight.value ? Colors.white : darkcolor,
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      child: Image.asset("assets/images/png/rocket.png"),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "WELCOME MESSAGE",
                          style: TextStyle(
                              color: appbarController.islight.value
                                  ? Colors.grey.shade800
                                  : Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Welcome Text if any should be given here",
                          style: TextStyle(
                              color: appbarController.islight.value
                                  ? Colors.grey.shade800
                                  : Colors.white,
                              fontSize: 15),
                        ),
                      ],
                    ),
                    Spacer(),
                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.blue),
                      child: Center(
                          child: Text(
                        "Button",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // number of items in each row
                    mainAxisSpacing: 30.0, // spacing between rows
                    crossAxisSpacing: 18.0, // spacing between columns
                    childAspectRatio: 3 / 1.7,
                  ),
                  // padding around the grid
                  itemCount: textData.length, // total number of items
                  itemBuilder: (context, index) {
                    return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: appbarController.islight.value
                              ? Colors.white
                              : darkcolor,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 30,
                                height: 30,
                                child: Image(
                                  image:
                                      AssetImage("assets/images/png/secured.png"),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "28",
                              style: TextStyle(
                                  color: appbarController.islight.value
                                      ? Colors.grey.shade800
                                      : Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              textData[index],
                              style: TextStyle(
                                  color: appbarController.islight.value
                                      ? Colors.grey.shade800
                                      : Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )
                          ],
                        ));
                  },
                ),
              ),
            ),
            SizedBox(height: 35,),
            Row(
              children: [
                SizedBox(width: 15,),
                Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("87.4",style: TextStyle(color:appbarController.islight.value
                                      ? Colors.grey.shade600
                                      : Colors.white ,fontSize: 16,fontWeight: FontWeight.bold),),
                             
                              Text("New Orders",style: TextStyle(color: appbarController.islight.value
                                      ? Colors.grey.shade600
                                      : Colors.white,fontSize: 12,),)
                            ],
                          ),
                          Spacer(),
                        Icon(Icons.shopping_cart_rounded,color:appbarController.islight.value
                                      ? Colors.grey.shade400
                                      : Colors.white ,size: 35,),
                        SizedBox(width: 15,)
                        ],
                      ),
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: appbarController.islight.value
                              ? Colors.white
                              : darkcolor),
                )),
                 SizedBox(width: 15,),
                Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("+12%",style: TextStyle(color: appbarController.islight.value
                                      ? Colors.grey.shade600
                                      : Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                             
                              Text("Today Sales",style: TextStyle(color: appbarController.islight.value
                                      ? Colors.grey.shade600
                                      : Colors.white,fontSize: 12,),)
                            ],
                          ),
                          Spacer(),
                        Icon(Icons.waves,color: appbarController.islight.value
                                      ? Colors.grey.shade400
                                      : Colors.white,size: 35,),
                        SizedBox(width: 15,)
                        ],
                      ),
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: appbarController.islight.value
                              ? Colors.white
                              : darkcolor),
                )),
                 SizedBox(width: 15,),
                Expanded(
                    child:Container(
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("44.5",style: TextStyle(color: appbarController.islight.value
                                      ? Colors.grey.shade600
                                      : Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                             
                              Text("New Users",style: TextStyle(color: appbarController.islight.value
                                      ? Colors.grey.shade600
                                      : Colors.white,fontSize: 12,),)
                            ],
                          ),
                          Spacer(),
                        Icon(Icons.supervisor_account_sharp,color: appbarController.islight.value
                                      ? Colors.grey.shade400
                                      : Colors.white,size: 35,),
                        SizedBox(width: 15,)
                        ],
                      ),
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: appbarController.islight.value
                              ? Colors.white
                              : darkcolor),
                )),
                 SizedBox(width: 15,),
                 Expanded(
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(width: 20,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("50",style: TextStyle(color: appbarController.islight.value
                                      ? Colors.grey.shade600
                                      : Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                             
                              Text("Pending Issues",style: TextStyle(color: appbarController.islight.value
                                      ? Colors.grey.shade600
                                      : Colors.white,fontSize: 12,),)
                            ],
                          ),
                          Spacer(),
                        Icon(Icons.shopping_cart_rounded,color:appbarController.islight.value
                                      ? Colors.grey.shade400
                                      : Colors.white,size: 35,),
                        SizedBox(width: 15,)
                        ],
                      ),
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: appbarController.islight.value
                              ? Colors.white
                              : darkcolor),
                )),
                  SizedBox(width: 15,),
              ],
            ),
            SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }

  List textData = [
    "Number of Employees",
    "Total Projects",
    "Completed Tasks",
    "Pending Tasks",
    "Total Income",
    "Total Visitors"
  ];
}
