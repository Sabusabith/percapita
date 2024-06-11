import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/screens/common/colors/colors.dart';

import '../../../controller/appbar_controller.dart';

class DashBoard extends StatelessWidget {
  AppbarController appbarController = Get.put(AppbarController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: size.width,
            height: 100,
            decoration: BoxDecoration(
                color: appbarController.islight.value
                    ? Colors.grey.shade100
                    : darkcolor,
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // number of items in each row
                  mainAxisSpacing: 30.0, // spacing between rows
                  crossAxisSpacing: 18.0, // spacing between columns
                  childAspectRatio: 3 / 2,
                ),
                // padding around the grid
                itemCount: textData.length, // total number of items
                itemBuilder: (context, index) {
                  return Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:appbarController.islight.value
                    ? Colors.grey.shade100
                    : darkcolor,),
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
                              SizedBox(height: 10,),
                              Text("28",style: TextStyle(color:appbarController.islight.value
                                ? Colors.grey.shade800
                                : Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                              SizedBox(height: 15,),
                               Text(textData[index],style: TextStyle(color: appbarController.islight.value
                                ? Colors.grey.shade800
                                : Colors.white,fontWeight: FontWeight.bold,fontSize: 15),)
                        ],
                      ));
                },
              ),
            ),
          )
        ],
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
