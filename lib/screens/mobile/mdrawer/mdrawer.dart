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
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Drawer(
        backgroundColor:
            appbarController.islight.value ? Colors.white : darkcolor,
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
                    SizedBox(width: 10)
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
                        index: 1,
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
                      ),
                      _buildExpansionTile(
                        icon: Icons.people,
                        title: 'Employee',
                        index: 2,
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
                      ),
                      _buildExpansionTile(
                        icon: Icons.attach_money,
                        title: 'Payroll',
                        index: 3,
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
                      ),
                      _buildExpansionTile(
                        icon: Icons.settings,
                        title: 'Settings',
                        index: 4,
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
                      ),
                      _buildListItem(
                        icon: Icons.person,
                        title: 'Profile',
                        index: 5,
                      ),
                      SizedBox(height: 25),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(
      {required IconData icon, required String title, required int index}) {
    return InkWell(
      onTap: () {
        setState(() {
          _selectedIndex = index; // Update the selected index
        });
        Navigator.pop(context); // Close the drawer
        widget.onMenuItemSelected(index);
      },
      child: ListTile(
        selected: _selectedIndex == index,
      
        leading: Icon(
          icon,
          color: _getTileColor(index),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: _getTileColor(index),
          ),
        ),
      ),
    );
  }

  Widget _buildExpansionTile(
      {required IconData icon,
      required String title,
      required List<Widget> children,
      required int index}) {
    return Theme(
      data: Theme.of(context).copyWith(
        hoverColor: Colors.transparent,
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
        
        initiallyExpanded: _isExpansionTileExpanded(index),
        onExpansionChanged: (expanded) {
          if (expanded) {
            setState(() {
              _selectedIndex = index;
            });
          }
        },
        iconColor: _getTileColor(index),
        textColor: _getTileColor(index),
        leading: Icon(
          icon,
          color: _getTileColor(index),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: _getTileColor(index),
          ),
        ),
        children: children,
      ),
    );
  }

  Color _getTileColor(int index) {
    return _selectedIndex == index
        ? primeryColor
        : appbarController.islight.value
            ? Colors.grey.shade700
            : Colors.grey.shade100;
  }

  bool _isExpansionTileExpanded(int index) {
    if (_selectedIndex == index) {
      return true;
    }
    return false;
  }
}
