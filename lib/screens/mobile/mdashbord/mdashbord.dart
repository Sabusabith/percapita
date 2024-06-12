import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/colors/colors.dart';
import '../../../controller/appbar_controller.dart';

class MDashboard extends StatelessWidget {
 MDashboard({super.key});
  AppbarController appbarController = Get.put(AppbarController());

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Obx(()=>
       SingleChildScrollView(
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
                                ? Colors.white
                                : darkcolor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                child: Image.asset("assets/images/png/rocket.png"),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "WELCOME MESSAGE",
                                    style: GoogleFonts.inter(
                                        color: appbarController.islight.value
                                            ? Colors.grey.shade800
                                            : Colors.white,
                                        fontSize:  12 ,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Welcome Text if any should be given here",
                                    style: GoogleFonts.inter(
                                        color: appbarController.islight.value
                                            ? Colors.grey.shade800
                                            : Colors.white,
                                        fontSize:8 ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                width: 80,
                                height:  30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Colors.blue),
                                child: Center(
                                    child: Text(
                                  "Button",
                                  style: TextStyle(color: Colors.white),
                                )),
                              ),
                              SizedBox(width: 10,)
                             
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25,),
               
                       Container(height: 400,
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 15),
                           child: GridView.builder(
                             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                               crossAxisCount:
                                    2  // ,number of items in each row
                              , mainAxisSpacing: 30.0, // spacing between rows
                               crossAxisSpacing: 18.0, // spacing between columns
                               childAspectRatio: 2.7 / 2,
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
                                       SizedBox(height: 20,),
                                       SizedBox(
                                           width: 25,
                                           height: 25,
                                           child: Image(
                                             image: AssetImage(
                                                 "assets/images/png/secured.png"),
                                           )),
                                       SizedBox(
                                         height: 10,
                                       ),
                                       Text(
                                         "28",
                                         style: GoogleFonts.inter(
                                             color: appbarController.islight.value
                                                 ? Colors.grey.shade800
                                                 : Colors.white,
                                             fontWeight: FontWeight.bold,
                                             fontSize:20),
                                       ),
                                       SizedBox(
                                         height: 10,
                                       ),
                                       Text(
                                         textData[index],
                                         style: GoogleFonts.inter(
                                             color: appbarController.islight.value
                                                 ? Colors.grey.shade800
                                                 : Colors.white,
                                             fontWeight: FontWeight.bold,
                                             fontSize:13),
                                       ),
                                         SizedBox(
                                         height: 10,
                                       ),
                                     ],
                                    
                                   ));
                             },
                           ),
                         ),
                       ),
                     SizedBox(height: 25,),
               
                       Column(
                      children: [
                        Row(
                          children: [
                         SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                  child: Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "87.4",
                                          style: GoogleFonts.inter(
                                              color: appbarController.islight.value
                                                  ? Colors.grey.shade600
                                                  : Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "New Orders",
                                          style: GoogleFonts.inter(
                                            color: appbarController.islight.value
                                                ? Colors.grey.shade600
                                                : Colors.white,
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.shopping_cart_rounded,
                                      color: appbarController.islight.value
                                          ? Colors.grey.shade400
                                          : Colors.white,
                                      size: 35,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    )
                                  ],
                                ),
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: appbarController.islight.value
                                        ? Colors.white
                                        : darkcolor),
                              )),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                  child: Container(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "+12%",
                                          style: GoogleFonts.inter(
                                              color: appbarController.islight.value
                                                  ? Colors.grey.shade600
                                                  : Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "Today Sales",
                                          style: GoogleFonts.inter(
                                            color: appbarController.islight.value
                                                ? Colors.grey.shade600
                                                : Colors.white,
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.waves,
                                      color: appbarController.islight.value
                                          ? Colors.grey.shade400
                                          : Colors.white,
                                      size: 35,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    )
                                  ],
                                ),
                                height: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: appbarController.islight.value
                                        ? Colors.white
                                        : darkcolor),
                              )),
                              SizedBox(
                                width: 15,
                              ),
                          ],
                        ),
                        SizedBox(height: 10,),
                         Row(
                      children: [
         SizedBox(
                            width: 15,
                          ),
                           Expanded(
                              child: Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "44.5",
                                      style: GoogleFonts.inter(
                                          color: appbarController.islight.value
                                              ? Colors.grey.shade600
                                              : Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "New Users",
                                      style: GoogleFonts.inter(
                                        color: appbarController.islight.value
                                            ? Colors.grey.shade600
                                            : Colors.white,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.supervisor_account_sharp,
                                  color: appbarController.islight.value
                                      ? Colors.grey.shade400
                                      : Colors.white,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 15,
                                )
                              ],
                            ),
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: appbarController.islight.value
                                    ? Colors.white
                                    : darkcolor),
                          )),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                              child: Container(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "50",
                                      style: GoogleFonts.inter(
                                          color: appbarController.islight.value
                                              ? Colors.grey.shade600
                                              : Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Pending Issues",
                                      style: GoogleFonts.inter(
                                        color: appbarController.islight.value
                                            ? Colors.grey.shade600
                                            : Colors.white,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                                Spacer(),
                                Icon(
                                  Icons.shopping_cart_rounded,
                                  color: appbarController.islight.value
                                      ? Colors.grey.shade400
                                      : Colors.white,
                                  size: 35,
                                ),
                                SizedBox(
                                  width: 15,
                                )
                              ],
                            ),
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: appbarController.islight.value
                                    ? Colors.white
                                    : darkcolor),
                          )),
                          SizedBox(
                            width: 15,
                          ),
                      ],
                    )
                    
                      ],
                    ),
                    SizedBox(height: 25,)
                    
                   
               
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