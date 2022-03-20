import 'package:flutter/material.dart';
import 'package:shamo/widgets/theme.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Your Cart',
        ),
      );
    }

    Widget emptyCart() {
      return Center(
          child: Column(
        children: [
          Image.asset(
            'assets/icon_empty_cart.png',
          ),
        ],
      ));
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: emptyCart(),
    );
  }
}
