import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/controller/appbar_controller.dart';
import 'package:percapita_copy/screens/common/colors/colors.dart';
import 'package:percapita_copy/screens/home/MasterScreen.dart';
import 'package:percapita_copy/screens/home/dashboard/dashboard.dart';

import '../../controller/login_controller.dart';

class Login extends StatelessWidget {
  final CheckboxController checkboxController = Get.put(CheckboxController());
// AppbarController appbarController = Get.put(AppbarController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return 
    
     Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          Expanded(
              child: 
               Container(
                  decoration: BoxDecoration(
                     color:Colors.white ,borderRadius: BorderRadius.circular(5)
                  ),
                       
                            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text(
                          "Welcome Back",
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 45,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text(
                          "USER NAME",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextField(
                        cursorColor: primeryColor,
                        style: TextStyle(color: Colors.grey.shade800 ),
                        decoration: InputDecoration(
                          hintText: "USER NAME",
                          hintStyle: TextStyle(color: Colors.grey.shade400,),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400))),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 35),
                        child: Text(
                          "PASSWORD",
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: TextField(
                         cursorColor: primeryColor,
                           style: TextStyle(color: Colors.grey.shade800 ),
                        decoration: InputDecoration(
                          hintText: "PASSWORD",
                              hintStyle: TextStyle(color:  Colors.grey.shade400),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    BorderSide(color: Colors.grey.shade400))),
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Obx(() => Checkbox(
                          
                              checkColor: Colors.white,
                           side: BorderSide(color: Colors.grey.shade400,width: 1),
                              activeColor: primeryColor,
                              value: checkboxController.isChecked.value,
                              onChanged: (newValue) {
                                checkboxController.toggleCheckbox();
                              },
                            )),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Keep me logged in",
                          style: TextStyle(
                              color:Colors.grey.shade600 , fontSize: 15),
                        ),
                        Spacer(),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                        ),
                        SizedBox(
                          width: 35,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                InkWell(onTap: (){
                  Get.to( MasterScreen(body: DashBoard()));
                 
                },
                    child: Container(margin: EdgeInsets.symmetric(horizontal: 35),
                      width: size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          color: primeryColor,
                          borderRadius: BorderRadius.circular(5)),
                          child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      SizedBox(width: 35,),
                      Expanded(child: Divider(color: Colors.grey.shade300,thickness: .8,)),
                          SizedBox(width: 35,),
                    ],
                  ),
                  SizedBox(height: 20,),
                   Row(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text(
                              "Don't have an account? ",
                              style: TextStyle(color: Colors.grey.shade600 , fontSize: 15),
                            ),
                             Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.blue, fontSize: 15,fontWeight: FontWeight.bold),
                            ),
                     ],
                   ),
                ],
                            ),
                          ),
              ),
          Expanded(
              child: Container(
            child: Image.asset("assets/images/png/login.png",fit: BoxFit.cover,),
          ))
        ],
      ),
    );
  }
}
