import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/colors/colors.dart';
import '../../../controller/appbar_controller.dart';

class Mdrawer extends StatefulWidget {
  final Function(int) onMenuItemSelected;


 Mdrawer({Key? key, required this.onMenuItemSelected}) : super(key: key);

  @override
  _MdrawerState createState() => _MdrawerState();
}

class _MdrawerState extends State<Mdrawer> {
    final AppbarController appbarController = Get.put(AppbarController());
  int _selectedIndex = 0; // Index of the selected item

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:appbarController.islight.value? Colors.white:darkcolor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, top: 20),
              child: Row(
                children: [
                  Text(
                    "Percapita",
                    style: GoogleFonts.pacifico(
                      color: primeryColor,
                      fontSize: 22,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close, color: Colors.grey.shade700),
                  ),
                  SizedBox(width: 10,)
                ],
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ListView(
                  children: [
                    _buildListItem(
                      icon: Icons.dashboard,
                      title: 'Dashboard',
                      index: 0,
                    ),
                    _buildExpansionTile(
                      icon: Icons.business,
                      title: 'Company',
                      children: <Widget>[
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "List All",
                          index: 10,
                        ),
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "Company Modules",
                          index: 11,
                        ),
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "Company Menu",
                          index: 12,
                        ),
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "Leave Type",
                          index: 13,
                        ),
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "Holiday List",
                          index: 14,
                        ),
                      ],
                      index: 1,
                    ),
                    _buildExpansionTile(
                      icon: Icons.people,
                      title: 'Employee',
                      children: <Widget>[
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "List All",
                          index: 20,
                        ),
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "Employee Menu",
                          index: 21,
                        ),
                      ],
                      index: 2,
                    ),
                    _buildExpansionTile(
                      icon: Icons.attach_money,
                      title: 'Payroll',
                      children: <Widget>[
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "List All",
                          index: 31,
                        ),
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "Payroll Processing",
                          index: 32,
                        ),
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "Processing Date",
                          index: 33,
                        ),
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "Maximum Leave Allowed",
                          index: 34,
                        ),
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "Holiday List",
                          index: 35,
                        ),
                      ],
                      index: 3,
                    ),
                    _buildExpansionTile(
                      icon: Icons.settings,
                      title: 'Settings',
                      children: <Widget>[
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "Holiday List",
                          index: 36,
                        ),
                        _buildListItem(
                          icon: Icons.circle_outlined,
                          title: "Holiday List",
                          index: 37,
                        ),
                      ],
                      index: 4,
                    ),
                    _buildListItem(
                      icon: Icons.person,
                      title: 'Profile',
                      index: 5,
                    ),
                    SizedBox(height: 25,),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

 Widget _buildListItem({required IconData icon, required String title, required int index}) {
  return InkWell(
    onTap: () {
      setState(() {
        _selectedIndex = index; // Update the selected index
      });
     
      widget.onMenuItemSelected(index);
    },
    child: ListTile(
      leading: Icon(icon, color: _selectedIndex == index ? primeryColor : Colors.grey.shade700),
      title: Text(title, style: TextStyle(color: _selectedIndex == index ? primeryColor : Colors.grey.shade700)),
    ),
  );
}


  Widget _buildExpansionTile({required IconData icon, required String title, required List<Widget> children, required int index}) {
    return Theme(
      data: Theme.of(context).copyWith(
        hoverColor: Colors.transparent,
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
        iconColor: _selectedIndex == index ? primeryColor : Colors.grey.shade700,
        textColor: _selectedIndex == index ? primeryColor : Colors.grey.shade700,
        leading: Icon(icon, color: _selectedIndex == index ? primeryColor : Colors.grey.shade700),
        title: Text(title, style: TextStyle(color: _selectedIndex == index ? primeryColor : Colors.grey.shade700)),
        children: children,
      ),
    );
  }
}
