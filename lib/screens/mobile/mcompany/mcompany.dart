import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/screens/mobile/mdrawer/mdrawer.dart';

import '../../../common/colors/colors.dart';
import '../../../controller/appbar_controller.dart';
import '../../../controller/master_screens_controller.dart';
import '../../company/add_company.dart';
import '../../home/MasterScreen.dart';

class Mcompany extends StatelessWidget {
  Mcompany({Key? key, required this.onMenuItemSelected}) : super(key: key);
  final AppbarController appbarController = Get.put(AppbarController());
  final ScrollController horizontalScrollController = ScrollController();
  final MasterScreenController masterScreenController = Get.put(MasterScreenController());
  final Function(int) onMenuItemSelected;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Obx(()=>
     Column(
        children: [
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: size.width,
            height: 50,
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
                SizedBox(width: 15),
                Icon(
                  Icons.home,
                  color: primeryColor.withOpacity(.6),
                  size: 25,
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.arrow_forward_ios,
                  color: appbarController.islight.value
                      ? Colors.grey.shade600
                      : Colors.white,
                  size: 10,
                ),
                SizedBox(width: 25),
                Text(
                  "List of Companies",
                  style: TextStyle(
                    color: appbarController.islight.value
                        ? Colors.grey.shade700
                        : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: size.width,
            height: 100,
            decoration: BoxDecoration(
              color: appbarController.islight.value ? Colors.white : darkcolor,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Container(
                    width: 35,
                    height: 35,
                    child: Image.asset("assets/images/png/rocket.png"),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Total Companies : 4",
                    style: TextStyle(
                      color: appbarController.islight.value
                          ? Colors.grey.shade800
                          : Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                  
                      // Call the onMenuItemSelected function to update the selected screen
                  onTap: () {
  // Access the existing MasterScreen widget and update its selectedScreen variable
  onMenuItemSelected(4);





                    },
                    child: Container(
                      width: 100,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text(
                          "Add Company",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Scrollbar(
            controller: horizontalScrollController,
            thumbVisibility: true,
            trackVisibility: true,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              controller: horizontalScrollController,
              child: SingleChildScrollView(
                child: Container(
                  color: appbarController.islight.value ? Colors.white : darkcolor,
                
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: DataTable(
                    showBottomBorder: true,
                    dividerThickness: 0,
                    border: TableBorder.all(color: Colors.grey.shade200),
                    columns: <DataColumn>[
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Name',
                            style: TextStyle(
                              color: appbarController.islight.value
                                  ? Colors.grey.shade800
                                  : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Comp_Id',
                            style: TextStyle(
                              color: appbarController.islight.value
                                  ? Colors.grey.shade800
                                  : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Comp_Code',
                            style: TextStyle(
                              color: appbarController.islight.value
                                  ? Colors.grey.shade800
                                  : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Status',
                            style: TextStyle(
                              color: appbarController.islight.value
                                  ? Colors.grey.shade800
                                  : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'WhatsApp',
                            style: TextStyle(
                              color: appbarController.islight.value
                                  ? Colors.grey.shade800
                                  : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Expanded(
                          child: Text(
                            'Mobile No',
                            style: TextStyle(
                              color: appbarController.islight.value
                                  ? Colors.grey.shade800
                                  : Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                    rows: <DataRow>[
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text(
                            'UserName 1',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'Name 1',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'Staff',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'Id',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'Company 1',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            '+9189245558',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text(
                            'UserName 2',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'Name 2',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'CA Student',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'Id',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'Company 2',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            '+9189245558',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                        ],
                      ),
                      DataRow(
                        cells: <DataCell>[
                          DataCell(Text(
                            'UserName 3',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'Name 3',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'Trainee',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'Id',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            'Company 3',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                          DataCell(Text(
                            '+9189245558',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: appbarController.islight.value
                                  ? Colors.grey.shade600
                                  : Colors.white,
                            ),
                          )),
                        ],
                      ),
                    ],
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
