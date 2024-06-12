import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/common/customtextfield.dart';

import '../../common/responsive.dart';
import '../../controller/appbar_controller.dart';
import '../../common/colors/colors.dart';

class AddCompany extends StatelessWidget {
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
           var mobile = Responsive.isMobile(context);
    var tab = Responsive.isTablet(context);
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
              height:tab?50: 60,
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
                        fontSize:tab?13: 15),
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
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      children: [
                        Text(
                          "Basic Information",
                          style: TextStyle(
                              color:appbarController.islight.value?Colors.grey.shade800: Colors.grey.shade200,
                              fontSize:tab?20: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Id",
                              label: "Company Id",
                              controller: companyidController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Code",
                              label: "Company Code",
                              controller: companyCodeController)),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Name",
                              label: "Company Name",
                              controller: companyNameController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Intustry/Category",
                              label: "Intustry/Category",
                              controller: intustryController)),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Status",
                              label: "Status",
                              controller: statusController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Group Name",
                              label: "Group Name",
                              controller: groupNameController)),
                      SizedBox(
                        width: 35,
                      ),
                    ],
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
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Row(
                      children: [
                        Text(
                          "Detailed Information",
                          style: TextStyle(
                              color:appbarController.islight.value?Colors.grey.shade800: Colors.grey.shade200,
                              fontSize:tab?20: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Legal",
                              label: "Legal Name",
                              controller: leagelNameController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Founder",
                              label: "Founder/Owner",
                              controller: ownernameController)),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Email",
                              label: "Email Address",
                              controller: emailController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "PAN",
                              label: "PAN",
                              controller: panController)),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Watsapp",
                              label: "Watsapp",
                              controller: watsappController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Phone Number",
                              label: "Phone Number",
                              controller: phonenumbercontroller)),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Address",
                              label: "Address",
                              controller: addressController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Landmark",
                              label: "Landmark",
                              controller: lanndmarkController)),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "City",
                              label: "City",
                              controller: cityController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "State",
                              label: "State",
                              controller: stateController)),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "Country",
                              label: "Country",
                              controller: countryController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(child: SizedBox()),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
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
                              fontSize:tab?20: 22,
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
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "VAT Applicable",
                              label: "VAT Applicable",
                              controller: vatController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "GST Applicable",
                              label: "GST Applicable",
                              controller: gstapplicableController)),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                    SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "GST Compounting",
                              label: "GST Compounting",
                              controller: gstCompountdingController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "GST Number",
                              label: "GST Number",
                              controller: gstnumberController)),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
                    SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 35,
                      ),
                      Expanded(
                          child: CustomTextFiled(
                              hint: "VAT Number",
                              label: "VAT Number",
                              controller:vatnumberController)),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child:SizedBox()),
                      SizedBox(
                        width: 35,
                      ),
                    ],
                  ),
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
