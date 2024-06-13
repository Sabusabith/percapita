import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/colors/colors.dart';
import '../../../common/customtextfield.dart';
import '../../../controller/appbar_controller.dart';

class AddMcompany extends StatelessWidget {
  
  AppbarController appbarController = Get.put(AppbarController());
  final companyidController = TextEditingController();
  final companyCodeController = TextEditingController();
  final companyNameController = TextEditingController();
  final intustryController = TextEditingController();
  final statusController = TextEditingController();
  final groupNameController = TextEditingController();
  final leagelNameController = TextEditingController();
  final ownernameController = TextEditingController();
  final emailController = TextEditingController();
  final panController = TextEditingController();
  final watsappController = TextEditingController();
  final phonenumbercontroller = TextEditingController();
  final addressController = TextEditingController();
  final lanndmarkController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final countryController = TextEditingController();
  final vatController = TextEditingController();
  final gstapplicableController = TextEditingController();
  final vatnumberController = TextEditingController();
  final gstCompountdingController = TextEditingController();
  final gstnumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Obx(
      () => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: size.width,
              height:50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: appbarController.islight.value
                      ? LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            Colors.white,
                            Colors.grey.shade100,
                          ],
                        )
                      : LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: <Color>[
                            darkcolor,
                            darkcolor.withOpacity(.1),
                          ],
                        )),
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.home,
                    color: primeryColor.withOpacity(.6),
                    size: 25,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: appbarController.islight.value
                        ? Colors.grey.shade600
                        : Colors.white,
                    size: 10,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Add Company",
                    style: TextStyle(
                        color: appbarController.islight.value
                            ? Colors.grey.shade700
                            : Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize:13),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 15,
              ),
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color:appbarController.islight.value?Colors.white:darkcolor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          "Basic Information",
                          style: TextStyle(
                              color:appbarController.islight.value?Colors.grey.shade800: Colors.grey.shade200,
                              fontSize:20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomTextFiled(
                      hint: "Id",
                      label: "Company Id",
                      controller: companyidController),
                            SizedBox(
                   height: 15,
                  ),           
                  CustomTextFiled(
                      hint: "Code",
                      label: "Company Code",
                      controller: companyCodeController),
                    SizedBox(
                   height: 15,
                  ),           
                  CustomTextFiled(
                      hint: "Name",
                      label: "Company Name",
                      controller: companyNameController),
                               SizedBox(
                   height: 15,
                  ),                      
                  CustomTextFiled(
                      hint: "Intustry/Category",
                      label: "Intustry/Category",
                      controller: intustryController),
                      SizedBox(
                   height: 15,
                  ),          
                  CustomTextFiled(
                      hint: "Status",
                      label: "Status",
                      controller: statusController),
                         SizedBox(
                   height: 15,
                  ),           
                                       
                  CustomTextFiled(
                      hint: "Group Name",
                      label: "Group Name",
                      controller: groupNameController),
                         SizedBox(
                   height: 15,
                  ),           
                  SizedBox(
                    height: 35,
                  ),
                  //Divider
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: Divider(
                        color:appbarController.islight.value? Colors.grey.shade600:Colors.grey.shade200,
                        thickness: 1,
                      )),
                      SizedBox(
                        width: 35,
                      )
                    ],
                  ),

                  //***************************** Detailed Information *******************************************
                  SizedBox(
                    height: 35,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          "Detailed Information",
                          style: TextStyle(
                              color:appbarController.islight.value?Colors.grey.shade800: Colors.grey.shade200,
                              fontSize:20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  CustomTextFiled(
                      hint: "Legal",
                      label: "Legal Name",
                      controller: leagelNameController),
                                 SizedBox(
                   height: 15,
                  ),                   
                  CustomTextFiled(
                      hint: "Founder",
                      label: "Founder/Owner",
                      controller: ownernameController),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextFiled(
                      hint: "Email",
                      label: "Email Address",
                      controller: emailController),
                                SizedBox(
                   height: 15,
                  ),                     
                  CustomTextFiled(
                      hint: "PAN",
                      label: "PAN",
                      controller: panController),
                  SizedBox(
                   height: 15,
                  ),           
                
                  CustomTextFiled(
                      hint: "Watsapp",
                      label: "Watsapp",
                      controller: watsappController),
                                SizedBox(
                   height: 15,
                  ),                     
                  CustomTextFiled(
                      hint: "Phone Number",
                      label: "Phone Number",
                      controller: phonenumbercontroller),
                    SizedBox(
                   height: 15,
                  ),           
                
                  CustomTextFiled(
                      hint: "Address",
                      label: "Address",
                      controller: addressController),
                           SizedBox(
                   height: 15,
                  ),                         
                  CustomTextFiled(
                      hint: "Landmark",
                      label: "Landmark",
                      controller: lanndmarkController),
                    SizedBox(
                   height: 15,
                  ),           
                  CustomTextFiled(
                      hint: "City",
                      label: "City",
                      controller: cityController),
                           SizedBox(
                   height: 15,
                  ),                         
                  CustomTextFiled(
                      hint: "State",
                      label: "State",
                      controller: stateController),
                    SizedBox(
                   height: 15,
                  ),           
                  CustomTextFiled(
                      hint: "Country",
                      label: "Country",
                      controller: countryController),
 SizedBox(
                    height: 35,
                  ),
                  //**************************** Accounting Info ********************************
  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: Divider(
                        color:appbarController.islight.value? Colors.grey.shade600:Colors.grey.shade200,
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
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      children: [
                        Text(
                          "Accounting Info",
                          style: TextStyle(
                              color: appbarController.islight.value?Colors.grey.shade800: Colors.grey.shade200,
                              fontSize:20,
                              fontWeight: FontWeight.bold),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                
                  CustomTextFiled(
                      hint: "VAT Applicable",
                      label: "VAT Applicable",
                      controller: vatController),
                               SizedBox(
                   height: 15,
                  ),                      
                  CustomTextFiled(
                      hint: "GST Applicable",
                      label: "GST Applicable",
                      controller: gstapplicableController),
                    SizedBox(
                   height: 15,
                  ),           
                  CustomTextFiled(
                      hint: "GST Compounting",
                      label: "GST Compounting",
                      controller: gstCompountdingController),
                              SizedBox(
                   height: 15,
                  ),                       
                  CustomTextFiled(
                      hint: "GST Number",
                      label: "GST Number",
                      controller: gstnumberController),
                      SizedBox(
                   height: 15,
                  ),           
                  CustomTextFiled(
                      hint: "VAT Number",
                      label: "VAT Number",
                      controller:vatnumberController),
                
                
                  SizedBox(height: 35,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}