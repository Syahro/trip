import 'package:flutter/material.dart';
import 'package:trip/theme.dart';
import 'package:trip/widget/floating_button.dart';
import 'package:trip/widget/header.dart';
import 'package:trip/widget/hotels_card.dart';

class HotelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingButton(
        buttonColor: purpleColor,
        name: 'Continue to Payment',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Header(
                    imageUrl: 'assets/icons/hotels.png',
                    pageTitle: 'Hotels',
                    title: 'Select the hotel you\nwant to stay in',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  HotelsCard(
                    imageUrl: 'assets/images/hotel1.png',
                    name: 'Standout Hotel',
                    location: 'Jakarta, Indonesia',
                    price: '500k',
                    starFive: true,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  HotelsCard(
                    imageUrl: 'assets/images/hotel2.png',
                    name: 'Twins Hotel',
                    location: 'Bandung, Indonesia',
                    price: '345k',
                    starFive: false,
                  ),
                  SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
