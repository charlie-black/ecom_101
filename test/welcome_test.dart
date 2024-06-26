import 'package:ecom_101/screens/home_page.dart';
import 'package:ecom_101/screens/welcome.dart';
import 'package:ecom_101/shared_resources/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  testWidgets('GradientButton widget test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: Center(
          child: GradientButton(
            text: 'Test Button',
            onPressed: () {},
            width: 200,
          ),
        ),
      ),
    ));

    expect(find.text('Test Button'), findsOneWidget);
  });
}
