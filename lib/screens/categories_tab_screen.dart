import 'package:ecom_101/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesTabScreen extends StatefulWidget {
  const CategoriesTabScreen({Key? key}) : super(key: key);

  @override
  _CategoriesTabScreenState createState() => _CategoriesTabScreenState();
}

class _CategoriesTabScreenState extends State<CategoriesTabScreen>
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: TabBar(
                dividerColor: Colors.white,
                controller: _tabController,
                tabs: [
                  _buildTab(
                    svgAssetPath:'assets/images/female.svg',

                    isActive: _tabController.index == 0,
                    label: "Women",
                  ),
                  _buildTab(
                      svgAssetPath:'assets/images/male.svg',
                      isActive: _tabController.index == 1,
                      label: "Men"),
                  _buildTab(
                    label: "Accessories",
                    svgAssetPath:'assets/images/accessories.svg',
                    isActive: _tabController.index == 2,
                  ),
                  _buildTab(
                    label: "Beauty",
                    svgAssetPath:'assets/images/beauty.svg',
                    isActive: _tabController.index == 3,
                  ),
                ],
                indicator: const BoxDecoration(
                  color: Colors.transparent,
                ),
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

  Widget _buildTab({
    required String svgAssetPath,
    required bool isActive,
    required String label,
  }) {
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
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        svgAssetPath,
                        width: 20,
                        height: 20,
                        color: iconColor,
                      ),
                    ),
                  ),
                ),
                Text(
                  label,
                  style: TextStyle(
                    color: labelColor,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
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



