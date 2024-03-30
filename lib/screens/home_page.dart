import 'package:ecom_101/screens/search_page.dart';
import 'package:flutter/material.dart';
import 'package:ecom_101/screens/tab_screen.dart';
import 'package:ecom_101/utils/constants.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter_svg/svg.dart';

import 'my_orders.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const MyTabPageScreen(),
    const SearchResultsPage(),
    const MyOrdersScreen(),
    Container(child: Center(child: Text('Profile Page'))),
  ];

  final List<IconData> _activeIcons = [
    Icons.home,
    Icons.search,
    Icons.shopping_bag,
    Icons.person,
  ];

  final List<IconData> _inactiveIcons = [
    Icons.home_outlined,
    Icons.search_outlined,
    Icons.shopping_bag_outlined,
    Icons.person_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: _currentIndex == 0||_currentIndex==2
            ? Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                            width: 20,
                            height: 20,
                            child: SvgPicture.asset(
                  'assets/images/menu.svg',
                  width: 20,
                  height: 20,
                  fit: BoxFit.contain,
                            ),
                          ),
                ],
              ),
            )
            : Container(),

        title: Text(
          _getAppBarLabel(_currentIndex),
          style: kTextStyle.copyWith(color: Colors.black, fontSize: 20),
        ),
        actions: [
          _currentIndex == 0||_currentIndex==2
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      const Icon(Icons.notifications_none,
                          size: 30, color: Colors.black),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: badges.Badge(
                          badgeContent: Text(
                            '.',
                            style: kTextStyle.copyWith(
                                color: kDangerColor, fontSize: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: kTextStyle,
        unselectedLabelStyle: kTextStyle,
        currentIndex: _currentIndex,
        onTap: _onItemPressed,
        items: [
          for (int index = 0; index < _activeIcons.length; index++)
            BottomNavigationBarItem(
              icon: Icon(
                _inactiveIcons[index],
                color: Colors.grey,
              ),
              activeIcon: Icon(
                _activeIcons[index],
                color: Colors.black,
              ),
              label: _getLabel(index),
              backgroundColor: Colors.white,
            ),
        ],
      ),
    );
  }

  void _onItemPressed(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  String _getLabel(int index) {
    // Im leaving empty strings in case the labels will be needed
    switch (index) {
      case 0:
        return '';
      case 1:
        return '';
      case 2:
        return '';
      case 3:
        return '';
      default:
        return '';
    }
  }

  String _getAppBarLabel(int index) {
    switch (index) {
      case 0:
        return 'GemStore';
      case 1:
        return 'Dresses';
      case 2:
        return 'My Orders';
      case 3:
        return 'My Account';
      default:
        return '';
    }
  }
}
