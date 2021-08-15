import 'package:flutter/material.dart';
import 'package:trip/pages/hotels_page.dart';
import 'package:trip/theme.dart';
import 'package:trip/widget/card_trip.dart';
import 'package:trip/widget/floating_button.dart';
import 'package:trip/widget/header.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return HotelsPage();
              },
            ),
          );
        },
        child: FloatingButton(
          buttonColor: purpleColor,
          name: 'Continue to Hotels',
        ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Header(
                    imageUrl: 'assets/icons/trip.png',
                    pageTitle: 'Trip',
                    title: 'Whom You are Planning\nTo Travel With?',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CardTrip(
                    title: 'Solo Trip',
                    subTitle: 'Suitable for you need a calm situation',
                    isSelect: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CardTrip(
                    title: 'Family Trip',
                    subTitle: 'Suitable for Make Perfect Memory',
                    isSelect: true,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CardTrip(
                    title: 'Couples Trip',
                    subTitle: 'Suitable for spending time with loved ones',
                    isSelect: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CardTrip(
                    title: 'Company Trip',
                    subTitle: 'Suitable for refreshing your office mind',
                    isSelect: false,
                  ),
                  SizedBox(
                    height: 100,
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
