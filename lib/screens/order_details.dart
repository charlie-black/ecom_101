import 'package:ecom_101/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import '../shared_resources/gradient_button.dart';
import '../utils/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderDetails extends StatefulWidget {
  final String orderNumber;
  final String trackingNumber;
  final String subtotal;

  const OrderDetails(
      {super.key,
      required this.orderNumber,
      required this.trackingNumber,
      required this.subtotal});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
                size: 15,
              )),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Order ${widget.orderNumber}",
            style: kTextStyle.copyWith(color: Colors.black, fontSize: 20),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 92,
                    decoration: BoxDecoration(
                      color: HexColor("#575757"),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: HexColor("#575757"),
                        width: 0,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Your order is delivered',
                                style: kTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                'Rate product to get 5 points for collection',
                                style: kTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/images/order.svg',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: Text(
                            'Order number',
                            style: kTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                          trailing: Text(
                            widget.orderNumber,
                            style: kTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Tracking number',
                            style: kTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                          trailing: Text(
                            widget.trackingNumber,
                            style: kTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text(
                            'Delivery address',
                            style: kTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                          trailing: Text(
                            "SBI Building Software Park",
                            style: kTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 2),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.white,
                        width: 0,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Maxi Dress',
                                style: kTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: HexColor("#000000"),
                                ),
                              ),
                              Text(
                                "x1",
                                style: kTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "\$68.00",
                                style: kTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Linen Dress',
                                style: kTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: HexColor("#000000"),
                                ),
                              ),
                              Text(
                                "x1",
                                style: kTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "\$52.00",
                                style: kTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subtotal',
                                style: kTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: HexColor("#000000"),
                                ),
                              ),
                              Text(
                                "120.00",
                                style: kTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shipping',
                                style: kTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: HexColor("#000000"),
                                ),
                              ),
                              Text(
                                "0.00",
                                style: kTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Divider(
                            color: Colors.grey.withOpacity(0.5),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: kTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: HexColor("#000000"),
                                ),
                              ),
                              Text(
                                "\$120.00",
                                style: kTextStyle.copyWith(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GradientButton(
                          text: "Return home",
                          height: 40,
                          width: 40.w,
                          borderColor: HexColor("#777E90"),
                          borderRadius: 20.0,
                          textColor: HexColor("#777E90"),
                          colors: const [Colors.white, Colors.white],
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          }),
                      GradientButton(
                          text: "Rate",
                          height: 40,
                          width: 30.w,
                          borderColor: HexColor("#343434"),
                          borderRadius: 20.0,
                          textColor: Colors.white,
                          colors: [HexColor("#343434"), HexColor("#343434")],
                          onPressed: () {}),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
