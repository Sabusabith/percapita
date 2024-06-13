import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percapita_copy/controller/appbar_controller.dart';
import 'package:percapita_copy/common/colors/colors.dart';
import 'package:percapita_copy/common/search_animation.dart';
import 'package:percapita_copy/screens/Login/login.dart';
import 'package:percapita_copy/screens/mobile/Mdashbord/mdashbord.dart';
import 'package:percapita_copy/screens/mobile/mcompany/mcompany.dart';
import 'package:percapita_copy/screens/mobile/mdrawer/mdrawer.dart';
import 'package:percapita_copy/screens/mobile/mprofile/mprofile.dart';
import 'package:percapita_copy/screens/profile/Profile.dart';
import 'package:percapita_copy/screens/sidebar/sidebar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common/responsive.dart';
import '../../controller/master_screens_controller.dart';
import '../company/add_company.dart';

class MasterScreen extends StatefulWidget {
  MasterScreen({required this.body});
  final Widget body;
Widget selectedScreen = MDashboard();
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

  void _onMenuItemSelected(int index) {
  print("master menu index$index");
  setState(() {
    switch (index) {
      case 0:
        widget.selectedScreen = MDashboard();
        break;
      case 10:
                widget.selectedScreen = Mcompany(onMenuItemSelected: _onMenuItemSelected);

        break;
      case 4:
        // Navigate to the "Add Company" screen
        widget.selectedScreen = AddCompany(); // Assuming AddCompany is your screen
        break;
        case 5:
        // Navigate to the "Add Company" screen
        widget.selectedScreen = SingleChildScrollView(child: Profile()); // Assuming AddCompany is your screen
        break;
      default:
        widget.selectedScreen = MDashboard();
    }
  });
}


  @override
  Widget build(BuildContext context) {
    var mobile = Responsive.isMobile(context);
    var tab = Responsive.isTablet(context);
    Size size = MediaQuery.of(context).size;
    return Obx(
      () => Scaffold(
        backgroundColor: appbarController.islight.value
            ? Colors.grey.shade100
            : darkcolor.withOpacity(.8),
        drawer: mobile
            ? Mdrawer(onMenuItemSelected: _onMenuItemSelected)
            : SizedBox(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          toolbarHeight: 65,
          centerTitle: false,
          leadingWidth: mobile ? 50 : 200,
          leading: mobile
              ? Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.menu,color:appbarController.islight.value
            ? darkcolor.withOpacity(.8):Colors.grey.shade100
            ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(left: 80, top: 15),
                  child: Text(
                    "Percapita",
                    style:
                        GoogleFonts.pacifico(color: primeryColor, fontSize: 20),
                  ),
                ),
          elevation: 2,
          backgroundColor:
              appbarController.islight.value ? Colors.white : darkcolor,
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
                color: appbarController.islight.value
                    ? Colors.grey.shade600
                    : Colors.white,
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
            mobile ? SizedBox() : SizedBox(width: 30),
            mobile
                ? SizedBox()
                : Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Alina Mclourd",
                          style: GoogleFonts.inter(
                            color: appbarController.islight.value
                                ? Colors.grey.shade800
                                : Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "VP People Manager",
                          style: GoogleFonts.inter(
                            color: appbarController.islight.value
                                ? Colors.grey.shade800
                                : Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
            mobile ? SizedBox() : SizedBox(width: 30),
            SearchbarAnimation(),
            mobile
                ? SizedBox(
                    width: 10,
                  )
                : SizedBox(width: 20),
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
            mobile
                ? SizedBox(
                    width: 15,
                  )
                : SizedBox(width: 40),
          ],
        ),
        body: mobile
            ? SingleChildScrollView(
                child: Container(
                  width: size.width,
                  height: size.height,
                  child: Column(
                    children: [Expanded(child:    widget.selectedScreen)],
                  ),
                ),
              )
            : Column(
               
                children: [
                  Expanded(
                    child: Container(
                      color: appbarController.islight.value
                          ? Colors.grey.shade100
                          : darkcolor.withOpacity(.9),
                      width: size.width,
                      height: size.height,
                      child: Row(
                        children: [
                          SideBar(),
                          Expanded(
                            child: SingleChildScrollView(
                              child:
                                  Obx(() => masterScreenController.body.value),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    color: darkcolor,
                    child: Center(
                      child: Text(
                        "© 2024 made by Team Qhance for a better web.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  void onSelectedMenuItem(BuildContext context, int item) {
    switch (item) {
      case 0:
          masterScreenController.updateBody(Profile());
          setState(() {
            widget.selectedScreen = SingleChildScrollView(child: Profile());
          });
          
        break;
      case 1:
        // Navigate to Settings
        break;
      case 2:
        // Logout
        _showLogoutDialog(context);
         
        break;
    }
  }


  Future<void> _showLogoutDialog(BuildContext context) async {
  return showDialog<void>(
    
    context: context,
    barrierDismissible: false, // user must tap a button
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: appbarController.islight.value?Colors.white:darkcolor,
        title: Text('Logout',style: TextStyle(color: appbarController.islight.value?darkcolor:Colors.white),),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Do you want to log out?',style: TextStyle(color: appbarController.islight.value?darkcolor:Colors.white)),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text('Cancel',style: TextStyle(color: primeryColor)),
            onPressed: () {
              Navigator.of(context).pop(); // dismiss the dialog
            },
          ),
          TextButton(
            child: Text('Logout',style: TextStyle(color: appbarController.islight.value?darkcolor:Colors.white)),
            onPressed: () {
        Navigator.of(context).pop(); // dismiss the dialog
              // Add your logout logic here
              Get.to(LoginScreen()); // Redirect
            },
          ),
        ],
      );
    },
  );
}

}
