import 'package:flutter/material.dart';
import 'package:trip/theme.dart';
import 'package:trip/widget/card_trip.dart';
import 'package:trip/widget/floating_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingButton(),
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
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Image.asset('assets/icons/trip.png',
                              width: 24, height: 20),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Trip',
                        style: mediumTextstyle.copyWith(
                            fontSize: 24, color: whiteColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Whom You are Planning\nTo Travel With?',
                    style: regularTextStyle.copyWith(
                      color: whiteColor,
                      fontSize: 24,
                      letterSpacing: 1,
                    ),
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
