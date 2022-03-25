import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:win/pages/messages_page.dart';
import 'package:win/pages/settings_page.dart';
import 'package:win/pages/home_page.dart';
import 'package:win/pages/employees_page.dart';
import 'package:flutter/widgets.dart';
import 'package:win/widgets/avatar.dart';
import 'package:win/helpers.dart';
import 'package:win/widgets/icon_buttons.dart';
import '../theme.dart';


class HomeScreen extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final ValueNotifier<int> pageIndex = ValueNotifier(0);
  final ValueNotifier<String> title = ValueNotifier("Messages");


  final pages = [
    HomePage(),
    MessagesPage(),
    // EmployeesPage(),
    SettingsPage(),
  ];


  final pageTitles = const [
    "Home",
    "Messages",
    // "Employees",
    "Settings",
  ];

    void _onNavigationItemSelected(index) {
      title.value = pageTitles[index];
        pageIndex.value = index;
      }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: ValueListenableBuilder(
            valueListenable: title,
            builder: (BuildContext context, String value, _) {
              return Text(
                value,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
              )
              );
            },
          ),
        ),
        leadingWidth: 54,
        leading: Align(
          alignment: Alignment.centerRight,
          child: IconBackground(
            icon: Icons.search,
            onTap: () {
              print("TODO search");
              }
            ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Avatar.small(url: Helpers.randomPictureUrl(),),
          )
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (BuildContext context, int value, _) {
          return pages[value];
        },
      ),
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: _onNavigationItemSelected
      ),
    );
  }
}



class _BottomNavigationBar extends StatefulWidget {
  final ValueChanged<int> onItemSelected;
  
  _BottomNavigationBar({
    required this.onItemSelected,
  });

  @override
  State<_BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
  var selectedIndex = 0;
  
  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return Card(
      color: (brightness == Brightness.light) ? Colors.transparent : null,
      elevation: 0,
      margin: EdgeInsets.all(0),
      child: SafeArea(
            top: false,
            bottom: true,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                NavigationBarItem(lable: "Home", icon: Icons.home, index: 0, onTap: handleItemSelected, isSelected: (selectedIndex == 0),),
                NavigationBarItem(lable: "messages", icon: CupertinoIcons.bubble_left_bubble_right_fill, index: 1, onTap: handleItemSelected, isSelected: (selectedIndex == 1),),
                // NavigationBarItem(lable: "Employees", icon: Icons.person, index: 2, onTap: handleItemSelected, isSelected: (selectedIndex == 2),),
                NavigationBarItem(lable: "settings", icon: Icons.settings, index: 2, onTap: handleItemSelected, isSelected: (selectedIndex == 2),),
              ],
          ),
            ),
      ),
    );
  }
}




class NavigationBarItem extends StatelessWidget {
  NavigationBarItem({
    this.lable,
    this.icon,
    required this.index,
    required this.onTap,
    this.isSelected = false,
  });
  
  
  
  final lable;
  final icon;
  final int index;
  final ValueChanged<int> onTap;
  final bool isSelected;

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        height: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 23,
              color: isSelected ? AppColors.secondary : null,
            ),
            const SizedBox(
              height: 8,
              ),
            Text(
              lable,
              style: isSelected
                  ? const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondary,
                    )
                  : const TextStyle(
                    fontSize: 12,
                  )
            ),
          ],
        ),
      ),
    );
  }
}


