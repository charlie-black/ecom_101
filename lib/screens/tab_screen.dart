import 'package:ecom_101/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTabPageScreen extends StatefulWidget {
  const MyTabPageScreen({Key? key}) : super(key: key);

  @override
  _MyTabPageScreenState createState() => _MyTabPageScreenState();
}

class _MyTabPageScreenState extends State<MyTabPageScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  Color activeColor = Colors.black;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_updateActiveColor);
  }

  void _updateActiveColor() {
    setState(() {
      activeColor = Colors.black;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: TabBar(
              controller: _tabController,
              tabs: [
                _buildTab(
                  icon: const Icon(
                    Icons.female_outlined,
                  ),
                  isActive: _tabController.index == 0,
                  label: "Women",
                ),
                _buildTab(
                    icon: const Icon(Icons.male),
                    isActive: _tabController.index == 1,
                    label: "Men"),
                _buildTab(
                  label: "Accessories",
                  icon: const Icon(
                    FontAwesomeIcons.glasses,
                    size: 24,
                  ),
                  isActive: _tabController.index == 2,
                ),
                _buildTab(
                  label: "Beauty",
                  icon: const Icon(
                    FontAwesomeIcons.smile,
                    size: 24,
                  ),
                  isActive: _tabController.index == 3,
                ),
              ],
              indicator: const BoxDecoration(
                color: Colors.transparent,
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                DashboardScreen(),
                DashboardScreen(),
                DashboardScreen(),
                DashboardScreen(),
                
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(
      {required Icon icon, required bool isActive, required String label}) {
    Color iconColor = isActive ? Colors.white : Colors.black;
    Color labelColor = isActive ? Colors.black : Colors.grey;

    return Container(
      height: 70,
      child: Tab(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isActive ? activeColor : Colors.grey.withOpacity(0.2),
                  ),
                  child:  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        icon.icon,
                        size: 20,
                        color: iconColor,
                      ),
                    ),
                  ),
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: labelColor,
                    fontWeight: FontWeight.normal,fontSize: 12
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}



