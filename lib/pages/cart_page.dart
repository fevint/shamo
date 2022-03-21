import 'package:flutter/material.dart';
import 'package:shamo/widgets/cart_card.dart';
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icon_empty_cart.png',
            width: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Opss! Your Cart is Empty',
            style: primaryTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Let\'s find your favorite shoes',
            style: secondaryTextStyle,
          ),
          Container(
            width: 154,
            height: 44,
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Explore Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                )),
          )
        ],
      ));
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: defaultMargin,
        ),
        children: [
          CartCard(),
          CartCard(),
          CartCard(),
        ],
      );
    }

    Widget customBottomNav() {
      return Container(
        height: 180,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subtotal', style: primaryTextStyle),
                  Text(
                    '\$287,96',
                    style: priceTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 0.3,
              color: subTitleColor,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              height: 50,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue to Checkout',
                      style: primaryTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: primaryTextColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      bottomNavigationBar: customBottomNav(),
    );
  }
}
