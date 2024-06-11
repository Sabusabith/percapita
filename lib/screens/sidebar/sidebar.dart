import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/controller/master_screens_controller.dart';
import 'package:percapita_copy/screens/Login/login.dart';
import 'package:percapita_copy/screens/common/colors/colors.dart';
import 'package:percapita_copy/screens/company/list_of_company.dart';
import 'package:percapita_copy/screens/home/MasterScreen.dart';
import 'package:percapita_copy/screens/home/dashboard/dashboard.dart';
import '../../controller/appbar_controller.dart';
import '../../controller/sidebar_controller.dart';

class SideBar extends StatelessWidget {
  final AppbarController appbarController = Get.put(AppbarController());
  final MasterScreenController masterScreenController = Get.put(MasterScreenController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: appbarController.islight.value ? Colors.white : darkcolor,
      shape: Border(),
      child: Column(
        children: [
          SizedBox(height: 30),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Scrollbar(
                child: ListView(
                  children: [
                    HoverListTile(
                      widget: DashBoard(),
                      icon: Icons.dashboard,
                      title: "Dashboard",
                      index: 0,
                    ),
                    HoverExpansionTile(
                      icon: Icons.interests_rounded,
                      title: "Company",
                      index: 1,
                      children: [
                        HoverListTile(
                          widget: ListOfCompanies(),
                          icon: Icons.circle_outlined,
                          title: "List All",
                          index: 10,
                        ),
                        HoverListTile(
                          widget: Login(),
                          icon: Icons.circle_outlined,
                          title: "Company Modules",
                          index: 11,
                        ),
                        HoverListTile(
                          icon: Icons.circle_outlined,
                          title: "Company Menu",
                          index: 12,
                        ),
                        HoverListTile(
                          icon: Icons.circle_outlined,
                          title: "Leave Type",
                          index: 13,
                        ),
                        HoverListTile(
                          icon: Icons.circle_outlined,
                          title: "Holiday List",
                          index: 14,
                        ),
                      ],
                    ),
                    HoverExpansionTile(
                      icon: Icons.bolt,
                      title: "Employee",
                      index: 2,
                      children: [
                        HoverListTile(
                          icon: Icons.circle_outlined,
                          title: "List All",
                          index: 20,
                        ),
                        HoverListTile(
                          icon: Icons.circle_outlined,
                          title: "Employee Menu",
                          index: 21,
                        ),
                      ],
                    ),
                    HoverExpansionTile(
                      icon: Icons.account_circle_rounded,
                      title: "Payroll",
                      index: 3,
                      children: [
                        HoverListTile(
                          icon: Icons.circle_outlined,
                          title: "List All",
                          index: 31,
                        ),
                        HoverListTile(
                          icon: Icons.circle_outlined,
                          title: "Payroll Processing",
                          index: 32,
                        ),
                        HoverListTile(
                          icon: Icons.circle_outlined,
                          title: "Processing Date",
                          index: 33,
                        ),
                        HoverListTile(
                          icon: Icons.circle_outlined,
                          title: "Maximum Leave Allowed",
                          index: 34,
                        ),
                        HoverListTile(
                          icon: Icons.circle_outlined,
                          title: "Holiday List",
                          index: 35,
                        ),
                      ],
                    ),
                    HoverExpansionTile(
                      icon: Icons.pages_outlined,
                      title: "Settings",
                      index: 4,
                      children: [
                        HoverListTile(
                          title: "Sub-item 1",
                          index: 40,
                        ),
                        HoverListTile(
                          title: "Sub-item 2",
                          index: 41,
                        ),
                      ],
                    ),
                    HoverListTile(
                      icon: Icons.person,
                      title: "Profile",
                      index: 5,
                    ),
                    SizedBox(height: 25),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HoverListTile extends StatelessWidget {
  final AppbarController appbarController = Get.put(AppbarController());
  final MasterScreenController masterScreenController = Get.put(MasterScreenController());

  final IconData? icon;
  final String title;
  final int index;
  final Widget? widget;

  HoverListTile({Key? key, this.icon, required this.title, required this.index, this.widget}) : super(key: key);

  final HoverController hoverController = Get.put(HoverController());

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => hoverController.onHover(index),
      onExit: (_) => hoverController.onExit(),
      child: GestureDetector(
        onTap: () {
          hoverController.onClick(index);
          if (widget != null) {
            masterScreenController.updateBody(widget!);
          }
        },
        child: Obx(
          () => Container(
            child: Theme( data: Theme.of(context).copyWith(
                hoverColor: Colors.transparent,
                dividerColor: Colors.transparent,
              ),
              child: ListTile(
                 hoverColor: Colors.transparent,
                leading: icon != null
                    ? Icon(
                      size: 20,
                        icon,
                        color: hoverController.clickedIndex.value == index
                      ? primeryColor
                      : hoverController.hoveredIndex.value == index
                          ? primeryColor:
                          appbarController.islight.value?
                               Colors.grey.shade600:Colors.white,
                      )
                    : null,
                title: Text(
                  title,
                  style: TextStyle(
                    color:hoverController.clickedIndex.value == index
                        ? primeryColor
                        : hoverController.hoveredIndex.value == index
                            ? primeryColor
                            : appbarController.islight.value?
                               Colors.grey.shade600:Colors.white,
                  ),
                ),
              ),
            ),
           
          ),
        ),
      ),
    );
  }
}
class HoverExpansionTile extends StatelessWidget {
    AppbarController appbarController = Get.put(AppbarController());
    final MasterScreenController masterScreenController = Get.put(MasterScreenController());


  final IconData icon;
  final String title;
  final List<Widget> children;
  final int index;

  HoverExpansionTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.children,
      required this.index})
      : super(key: key);

  final HoverController hoverController = Get.put(HoverController());

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => hoverController.onHover(index),
      onExit: (_) => hoverController.onExit(),
      child: GestureDetector(
        onTap: () => hoverController.onClick(index),
        child: Obx(
          () => Container(
            child: Theme(
              data: Theme.of(context).copyWith(
                hoverColor: Colors.transparent,
                dividerColor: Colors.transparent,
              ),
              child: ExpansionTile(
                trailing: Icon(Icons.keyboard_arrow_down_rounded,color: hoverController.clickedIndex.value == index
                      ? primeryColor
                      : hoverController.hoveredIndex.value == index
                          ? primeryColor:
                          appbarController.islight.value?
                               Colors.grey.shade600:Colors.white ,),
                leading: Icon(
                  
                  icon,
                  color: hoverController.clickedIndex.value == index
                      ? primeryColor
                      : hoverController.hoveredIndex.value == index
                          ? primeryColor:
                          appbarController.islight.value?
                               Colors.grey.shade600:Colors.white,
                  size: 20,
                ),
                title: Text(
                  title,
                  style: TextStyle(
                    color: hoverController.clickedIndex.value == index
                        ? primeryColor
                        : hoverController.hoveredIndex.value == index
                            ? primeryColor
                            : appbarController.islight.value?
                               Colors.grey.shade600:Colors.white,
                    fontSize: 14,
                  ),
                ),
                children: children,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
