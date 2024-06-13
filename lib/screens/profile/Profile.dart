import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percapita_copy/screens/mobile/mprofile/mprofile.dart';

import '../../common/colors/colors.dart';
import '../../common/customtextfield.dart';
import '../../common/responsive.dart';
import '../../controller/appbar_controller.dart';

class Profile extends StatelessWidget {
  AppbarController appbarController = Get.put(AppbarController());
  final usernamecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final firstnamecontroller = TextEditingController();
  final lastnamenamecontroller = TextEditingController();
  final addresscontroller = TextEditingController();
  final citycontroller = TextEditingController();
  final countrycontroller = TextEditingController();
  final postalcodecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mobile = Responsive.isMobile(context);
    var tab = Responsive.isTablet(context);
    print(MediaQuery.of(context).size.width);
    Size size = MediaQuery.of(context).size;
    return Obx(
      () => Column(
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
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    child: Image.asset("assets/images/png/profile.png"),
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
                        "Admin",
                        style: GoogleFonts.inter(
                            color: appbarController.islight.value
                                ? Colors.grey.shade800
                                : Colors.white,
                            fontSize: tab ? 20 : 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Flutter Developer",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.bold,
                            color: appbarController.islight.value
                                ? Colors.grey.shade800
                                : Colors.white,
                            fontSize: tab ? 22 : 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
       mobile?Mprofile(): size.width <= 1294?
        
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15),
  child: Column(
    children: [
      SingleChildScrollView(
                        child: Container(
                          decoration: BoxDecoration(
                              color: appbarController.islight.value
                                  ? Colors.white
                                  : darkcolor,
                              borderRadius: BorderRadius.circular(10)),
                          height: size.height,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "Edit Profile",
                                      style: TextStyle(
                                          color: appbarController.islight.value
                                              ? Colors.grey.shade800
                                              : Colors.grey.shade200,
                                          fontSize: tab ? 20 : 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "USER INFORMATION",
                                      style: GoogleFonts.inter(
                                          color: appbarController.islight.value
                                              ? Colors.grey.shade800
                                              : Colors.grey.shade200,
                                          fontSize: tab ? 13 : 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                      child: CustomTextFiled(
                                          hint: "UserName",
                                          label: "UserName",
                                          controller: usernamecontroller)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                      child: CustomTextFiled(
                                          hint: "Email",
                                          label: "Email",
                                          controller: emailcontroller)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                      child: CustomTextFiled(
                                          hint: "First Name",
                                          label: "First Name",
                                          controller: firstnamecontroller)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                      child: CustomTextFiled(
                                          hint: "Last Name",
                                          label: "Last Name",
                                          controller: lastnamenamecontroller)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 45,
                              ),
                              //Divider
                              Row(
                                children: [
                                  SizedBox(
                                    width: 35,
                                  ),
                                  Expanded(
                                      child: Divider(
                                    color: appbarController.islight.value
                                        ? Colors.grey.shade600
                                        : Colors.grey.shade200,
                                    thickness: 1,
                                  )),
                                  SizedBox(
                                    width: 35,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 35,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Text(
                                      "CONTACT INFORMATION",
                                      style: GoogleFonts.inter(
                                          color: appbarController.islight.value
                                              ? Colors.grey.shade800
                                              : Colors.grey.shade200,
                                          fontSize: tab ? 13 : 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: CustomTextFiled(
                                    hint: "Address",
                                    label: "Address",
                                    controller: addresscontroller),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                      child: CustomTextFiled(
                                          hint: "City",
                                          label: "City",
                                          controller: citycontroller)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                      child: CustomTextFiled(
                                          hint: "Country",
                                          label: "Country",
                                          controller: countrycontroller)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                      child: CustomTextFiled(
                                          hint: "Postel Code",
                                          label: "Postel Code",
                                          controller: postalcodecontroller)),
                                  SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration(
                             
                              borderRadius: BorderRadius.circular(10)),
                          height: size.height / 1,
                          child: Stack(
                            children: [
                              Container(
                                width: size.width,
                                height: size.height / 2.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15)),
                                  child: Image(
                                    image: NetworkImage(
                                        'https://pbs.twimg.com/profile_banners/3015219910/1559145714/1500x500'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                  right: 0,
                                  left: 0,
                                  top: size.height / 2.5,
                                  child: Container(
                                    width: size.width,
                                    height: size.height / 1.6,
                                    color:appbarController.islight.value
                                      ? 
                                       Colors.white:darkcolor,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.symmetric(horizontal: 45),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Column(
                                                children: [
                                                  Text(
                                                    "26",
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      color: appbarController.islight.value
                                                  ? Colors.grey.shade800
                                                  : Colors.grey.shade200,
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                 
                                                  Text(
                                                    "Followers",
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      color: appbarController.islight.value
                                                  ? Colors.grey.shade800
                                                  : Colors.grey.shade200,
                                                      fontSize: 15.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                              ),
                                               SizedBox(width: 25,),
                                              Column(
                                                children: [
                                                  Text(
                                                    "26",
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      color: appbarController.islight.value
                                                  ? Colors.grey.shade800
                                                  : Colors.grey.shade200,
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Posts",
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      color:appbarController.islight.value
                                                  ? Colors.grey.shade800
                                                  : Colors.grey.shade200,
                                                      fontSize: 15.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                               SizedBox(width: 25,),
                                              Column(
                                                children: [
                                                  Text(
                                                    "26",
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      color: appbarController.islight.value
                                                  ? Colors.grey.shade800
                                                  : Colors.grey.shade200,
                                                      fontSize: 18.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Score",
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      color: appbarController.islight.value
                                                  ? Colors.grey.shade800
                                                  : Colors.grey.shade200,
                                                      fontSize: 15.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsets.symmetric(horizontal: 25),
                                          child: _buildBio(context),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 25),
                                          child: Divider(
                                            color: Colors.grey.shade300,
                                            thickness: 1.5,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Get in Touch with Nick ,",
                                              style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 16.0,
                                                  color: appbarController.islight.value
                                                  ? Colors.grey.shade700
                                                  : Colors.grey.shade200,),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              InkWell(onTap: (){
                                              },
                                                child: Container(
                                                  width: 120,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      color:appbarController.islight.value?Colors.black.withOpacity(.8): Colors.black.withOpacity(.8),
                                                      borderRadius:
                                                          BorderRadius.circular(5)),
                                                          child: Center(child: Text("FOLLOW",style: TextStyle(color: appbarController.islight.value
                                                    ? Colors.grey.shade200
                                                    : Colors.grey.shade200,fontWeight: FontWeight.bold),)),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15,
                                              ),
                                              InkWell(onTap: (){
                                          
                                              },
                                                child: Container(
                                                  width: 120,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          width: 1.5,
                                                          color:appbarController.islight.value? Colors.black.withOpacity(
                                                            .8,
                                                          ):Colors.grey.shade200),
                                                      borderRadius:
                                                          BorderRadius.circular(5)),
                                                          child: Center(child: Text("MESSAGE",style: TextStyle(color: appbarController.islight.value
                                                    ? Colors.grey.shade800
                                                    : Colors.grey.shade200,fontWeight: FontWeight.bold),)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Transform(transform: Matrix4.translationValues(0, -70, 0),child: _buildProfileImage())
                            ],
                          ),
                        ),

    ],
  ),
)        
        
        


:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                            color: appbarController.islight.value
                                ? Colors.white
                                : darkcolor,
                            borderRadius: BorderRadius.circular(10)),
                        height: size.height,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "Edit Profile",
                                    style: TextStyle(
                                        color: appbarController.islight.value
                                            ? Colors.grey.shade800
                                            : Colors.grey.shade200,
                                        fontSize: tab ? 20 : 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "USER INFORMATION",
                                    style: GoogleFonts.inter(
                                        color: appbarController.islight.value
                                            ? Colors.grey.shade800
                                            : Colors.grey.shade200,
                                        fontSize: tab ? 13 : 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: CustomTextFiled(
                                        hint: "UserName",
                                        label: "UserName",
                                        controller: usernamecontroller)),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: CustomTextFiled(
                                        hint: "Email",
                                        label: "Email",
                                        controller: emailcontroller)),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: CustomTextFiled(
                                        hint: "First Name",
                                        label: "First Name",
                                        controller: firstnamecontroller)),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: CustomTextFiled(
                                        hint: "Last Name",
                                        label: "Last Name",
                                        controller: lastnamenamecontroller)),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 45,
                            ),
                            //Divider
                            Row(
                              children: [
                                SizedBox(
                                  width: 35,
                                ),
                                Expanded(
                                    child: Divider(
                                  color: appbarController.islight.value
                                      ? Colors.grey.shade600
                                      : Colors.grey.shade200,
                                  thickness: 1,
                                )),
                                SizedBox(
                                  width: 35,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Text(
                                    "CONTACT INFORMATION",
                                    style: GoogleFonts.inter(
                                        color: appbarController.islight.value
                                            ? Colors.grey.shade800
                                            : Colors.grey.shade200,
                                        fontSize: tab ? 13 : 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: CustomTextFiled(
                                  hint: "Address",
                                  label: "Address",
                                  controller: addresscontroller),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: CustomTextFiled(
                                        hint: "City",
                                        label: "City",
                                        controller: citycontroller)),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: CustomTextFiled(
                                        hint: "Country",
                                        label: "Country",
                                        controller: countrycontroller)),
                                SizedBox(
                                  width: 15,
                                ),
                                Expanded(
                                    child: CustomTextFiled(
                                        hint: "Postel Code",
                                        label: "Postel Code",
                                        controller: postalcodecontroller)),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                       
                        borderRadius: BorderRadius.circular(10)),
                    height: size.height / 1,
                    child: Stack(
                      children: [
                        Container(
                          width: size.width,
                          height: size.height / 2.5,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            child: Image(
                              image: NetworkImage(
                                  'https://pbs.twimg.com/profile_banners/3015219910/1559145714/1500x500'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            right: 0,
                            left: 0,
                            top: size.height / 2.5,
                            child: Container(
                              width: size.width,
                              height: size.height / 1.6,
                              color:appbarController.islight.value
                                ? 
                                 Colors.white:darkcolor,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 45),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "26",
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                color: appbarController.islight.value
                                            ? Colors.grey.shade800
                                            : Colors.grey.shade200,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Followers",
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                color: appbarController.islight.value
                                            ? Colors.grey.shade800
                                            : Colors.grey.shade200,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "26",
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                color: appbarController.islight.value
                                            ? Colors.grey.shade800
                                            : Colors.grey.shade200,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Posts",
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                color:appbarController.islight.value
                                            ? Colors.grey.shade800
                                            : Colors.grey.shade200,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "26",
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                color: appbarController.islight.value
                                            ? Colors.grey.shade800
                                            : Colors.grey.shade200,
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "Score",
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                color: appbarController.islight.value
                                            ? Colors.grey.shade800
                                            : Colors.grey.shade200,
                                                fontSize: 15.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25),
                                    child: _buildBio(context),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25),
                                    child: Divider(
                                      color: Colors.grey.shade300,
                                      thickness: 1.5,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Get in Touch with Nick ,",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 16.0,
                                            color: appbarController.islight.value
                                            ? Colors.grey.shade700
                                            : Colors.grey.shade200,),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        InkWell(onTap: (){
                                        },
                                          child: Container(
                                            width: 120,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                color:appbarController.islight.value?Colors.black.withOpacity(.8): Colors.black.withOpacity(.8),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                                    child: Center(child: Text("FOLLOW",style: TextStyle(color: appbarController.islight.value
                                              ? Colors.grey.shade200
                                              : Colors.grey.shade200,fontWeight: FontWeight.bold),)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(onTap: (){
                                    
                                        },
                                          child: Container(
                                            width: 120,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 1.5,
                                                    color:appbarController.islight.value? Colors.black.withOpacity(
                                                      .8,
                                                    ):Colors.grey.shade200),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                                    child: Center(child: Text("MESSAGE",style: TextStyle(color: appbarController.islight.value
                                              ? Colors.grey.shade800
                                              : Colors.grey.shade200,fontWeight: FontWeight.bold),)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Positioned(
                            top: size.width / 7.5,
                            left: size.width / 13.5,
                            child: _buildProfileImage())
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25,)
        ],
      ),
    );
  }

  Widget _buildCoverImage(Size screenSize) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        image: DecorationImage(
          image: NetworkImage(
              'https://pbs.twimg.com/profile_banners/3015219910/1559145714/1500x500'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    return Center(
      child: Container(
        width: 140.0,
        height: 140.0,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('assets/images/png/profile.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(80.0),
          border: Border.all(
            color: Colors.white,
            width: 10.0,
          ),
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    TextStyle statLabelTextStyle = const TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 15.0,
      fontWeight: FontWeight.w200,
    );

    TextStyle statCountTextStyle = const TextStyle(
      color: Colors.black54,
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: statCountTextStyle,
        ),
        Text(
          label,
          style: statLabelTextStyle,
        ),
      ],
    );
  }

  final String _bio =
      "\"Find the latest fashion trends, discover unique home decor pieces, and explore effective beauty products while enjoying a seamless and secure e-commerce shopping experience.\"";
  Widget _buildStatContainer() {
    return Container(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildStatItem("Followers", "20"),
          _buildStatItem("Posts", "22"),
          _buildStatItem("Scores", "25"),
        ],
      ),
    );
  }

  Widget _buildBio(BuildContext context) {
    TextStyle bioTextStyle = TextStyle(
      fontFamily: 'Spectral',
      fontWeight: FontWeight.w400, //try changing weight to w500 if not thin
      fontStyle: FontStyle.italic,
      color: appbarController.islight.value
                                            ? Colors.grey.shade700
                                            : Colors.grey.shade200,
      fontSize: 16.0,
    );

    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        
        _bio,
        textAlign: TextAlign.center,
        style: bioTextStyle
        
      ),
    );
  }

  Widget _buildSeparator(Size screenSize) {
    return Container(
      width: screenSize.width / 1.6,
      height: 2.0,
      color: Colors.black26,
      margin: const EdgeInsets.only(top: 4.0),
    );
  }

  Widget _buildGetInTouch(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text(
        "Get in Touch with ,",
        style: const TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
      ),
    );
  }

  Widget _buildButtons() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => print("followed"),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: const Color(0xFF404A5C),
                ),
                child: const Center(
                  child: Text(
                    "FOLLOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: InkWell(
              onTap: () => print("Message"),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text("MESSAGE",
                        style: TextStyle(fontWeight: FontWeight.w600)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
