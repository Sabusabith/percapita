import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/controller/appbar_controller.dart';
import 'package:percapita_copy/screens/common/colors/colors.dart';
import 'package:percapita_copy/screens/common/search_animation.dart';
import 'package:percapita_copy/screens/sidebar/sidebar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/master_screens_controller.dart';

class MasterScreen extends StatefulWidget {
  MasterScreen({required this.body});
  final Widget body;

  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  final controller = TextEditingController();
  late AppbarController appbarController;
  late MasterScreenController masterScreenController;

  @override
  void initState() {
    super.initState();
    appbarController = Get.put(AppbarController());
    masterScreenController = Get.put(MasterScreenController());
    WidgetsBinding.instance.addPostFrameCallback((_) {
      masterScreenController.updateBody(widget.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx(() =>
      Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          centerTitle: false,
          leadingWidth: 200,
          leading: Padding(
            padding: const EdgeInsets.only(left: 80, top: 15),
            child: Text(
              "Percapita",
              style: GoogleFonts.pacifico(color: primeryColor, fontSize: 20),
            ),
          ),
          elevation: 2,
          backgroundColor: appbarController.islight.value ? Colors.white : darkcolor,
          actions: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/avtars/avtars1.png"),
                ),
              ),
            ),
            PopupMenuButton<int>(
              offset: const Offset(0.0, 55),
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0),
              icon: Icon(
                Icons.arrow_drop_down,
                color: appbarController.islight.value ? Colors.grey.shade600 : Colors.white,
              ),
              onSelected: (item) => onSelectedMenuItem(context, item),
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text('Profile'),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('Settings'),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text('Logout'),
                ),
              ],
            ),
            SizedBox(width: 30),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Alina Mclourd",
                    style: GoogleFonts.inter(
                      color: appbarController.islight.value ? Colors.grey.shade800 : Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "VP People Manager",
                    style: GoogleFonts.inter(
                      color: appbarController.islight.value ? Colors.grey.shade800 : Colors.white,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 30),
            SearchbarAnimation(),
            SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                appbarController.isDarkmode();
              },
              child: Obx(() => appbarController.islight.value
                ? Container(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      "assets/images/png/dark.png",
                      color: primeryColor,
                    ),
                  )
                : Container(
                    width: 30,
                    height: 30,
                    child: Image.asset(
                      "assets/images/png/light.png",
                      color: primeryColor,
                    ),
                  )),
            ),
            SizedBox(width: 40),
          ],
        ),
        body: Obx(() => Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                color: appbarController.islight.value ? Colors.grey.shade100 : darkcolor.withOpacity(.6),
                width: size.width,
                height: size.height,
                child: Row(
                  children: [
                    SideBar(),
                    Obx(() => Expanded(
                      child: masterScreenController.body.value,
                    )),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color:  darkcolor,
              child: Center(
                child: Text(
                  "© 2024 made by Team Qhance for a better web.",
                  style: TextStyle(
                    color:   Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }

  void onSelectedMenuItem(BuildContext context, int item) {
    switch (item) {
      case 0:
        // Navigate to Profile
        break;
      case 1:
        // Navigate to Settings
        break;
      case 2:
        // Logout
        break;
    }
  }
}
