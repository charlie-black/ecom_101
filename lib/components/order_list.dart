import 'package:ecom_101/screens/order_details.dart';
import 'package:ecom_101/shared_resources/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';

import '../utils/constants.dart';

class OrderList extends StatefulWidget {
  final List<Map<String, dynamic>> orderList;

  const OrderList({super.key, required this.orderList});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Container(
          color: Colors.white,
          child: ListView.builder(
            itemCount: widget.orderList.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Order ${widget.orderList[index]['orderNo']}",
                              style: kTextStyle.copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: 18,
                                color: HexColor("#141416"),
                              ),
                            ),
                            Text(
                              widget.orderList[index]['order_date'],
                              style: kTextStyle.copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: HexColor("#777E90"),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              "Tracking number: ",
                              style: kTextStyle.copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: HexColor("#777E90"),
                              ),
                            ),
                            Text(
                              widget.orderList[index]['trackingNo'],
                              style: kTextStyle.copyWith(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: HexColor("#000000"),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Quantity: ",
                                  style: kTextStyle.copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    color: HexColor("#777E90"),
                                  ),
                                ),
                                Text(
                                  "${widget.orderList[index]['quantity']}",
                                  style: kTextStyle.copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    color: HexColor("#000000"),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  "Subtotal: ",
                                  style: kTextStyle.copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    color: HexColor("#777E90"),
                                  ),
                                ),
                                Text(
                                  "${widget.orderList[index]['subtotal']}",
                                  style: kTextStyle.copyWith(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14,
                                    color: HexColor("#000000"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${widget.orderList[index]['order_status']}",
                              style: kTextStyle.copyWith(
                                fontSize: 14,
                                color: widget.orderList[index]
                                            ['order_status'] ==
                                        "PENDING"
                                    ? Colors.amber
                                    : widget.orderList[index]['order_status'] ==
                                            "DELIVERED"
                                        ? HexColor("#009254")
                                        : Colors.red,
                              ),
                            ),
                            GradientButton(
                                text: "Details",
                                height: 40,
                                width: 30.w,
                                borderColor: Colors.black,
                                borderRadius: 20.0,
                                textColor:HexColor("#000000"),
                                colors: const [Colors.white, Colors.white],
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => OrderDetails(
                                            orderNumber: widget.orderList[index]
                                                ['orderNo'],
                                            trackingNumber: widget
                                                .orderList[index]['trackingNo'],
                                            subtotal: widget.orderList[index]
                                                ['subtotal'])),
                                  );
                                }),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
