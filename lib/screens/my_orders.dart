import 'package:flutter/material.dart';
import '../components/order_list.dart';

class MyOrdersScreen extends StatefulWidget {
  const MyOrdersScreen({Key? key}) : super(key: key);

  @override
  _MyOrdersScreenState createState() => _MyOrdersScreenState();
}

class _MyOrdersScreenState extends State<MyOrdersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  Color activeColor = Colors.black;

  List<Map<String, dynamic>> orderList = [
    {
      'orderNo': '#1514',
      'trackingNo': 'IK987362341',
      'quantity': 2,
      'subtotal': '\$110.00',
      'order_status': 'DELIVERED',
      'order_date': '13/05/2021'
    },
    {
      'orderNo': '#1679',
      'trackingNo': 'IK987362390',
      'quantity': 3,
      'subtotal': '\$450.00',
      'order_status': 'DELIVERED',
      'order_date': '12/05/2021'
    },
    {
      'orderNo': '#1679',
      'trackingNo': 'IK987362390',
      'quantity': 1,
      'subtotal': '\$250.00',
      'order_status': 'PENDING',
      'order_date': '07/05/2021'
    },
    {
      'orderNo': '#1679',
      'trackingNo': 'IK987362390',
      'quantity': 2,
      'subtotal': '\$150.00',
      'order_status': 'CANCELLED',
      'order_date': '09/05/2021'
    },
    {
      'orderNo': '#1671',
      'trackingNo': 'IK987362381',
      'quantity': 3,
      'subtotal': '\$400.00',
      'order_status': 'DELIVERED',
      'order_date': '10/05/2021'
    },
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this,initialIndex: 1);
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
                  label: "Pending",
                  isActive: _tabController.index == 0,
                ),
                _buildTab(
                    isActive: _tabController.index == 1, label: "Delivered"),
                _buildTab(
                  label: "Cancelled",
                  isActive: _tabController.index == 2,
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
              children: [
                OrderList(
                  orderList: orderList
                      .where((order) =>
                  order['order_status'] == 'PENDING')
                      .toList(),
                ),
                OrderList(
                  orderList: orderList
                      .where((order) =>
                  order['order_status'] == 'DELIVERED')
                      .toList(),
                ),
                OrderList(
                  orderList: orderList
                      .where((order) =>
                  order['order_status'] == 'CANCELLED')
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab({required bool isActive, required String label}) {
    Color labelColor = isActive ? Colors.white : Colors.black;

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
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(color: Colors.transparent),
                    color: isActive ? activeColor : Colors.white,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        label,
                        style: TextStyle(
                            color: labelColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      ),
                    ),
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

