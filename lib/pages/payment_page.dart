import 'package:flutter/material.dart';
import 'package:trip/theme.dart';
import 'package:trip/widget/floating_button.dart';
import 'package:trip/widget/header.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButton: FloatingButton(
        buttonColor: greenColor,
        name: 'Continue to Checkout',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      imageUrl: 'assets/icons/payment.png',
                      pageTitle: 'Payment',
                      title: 'Choose the card you\nwant to use',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: defaultMargin,
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/card1.png',
                          width: 300,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          'assets/images/card2.png',
                          width: 300,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: defaultMargin,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: orangeColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: whiteColor,
                          size: 17,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Add Another Card',
                      style: lightTextStyle.copyWith(
                        fontSize: 14,
                        color: darkGrayColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 93,
              ),
              Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 4,
                          width: 30,
                          decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultMargin,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Payment Summary',
                            style: regularTextStyle.copyWith(
                              fontSize: 16,
                              color: whiteColor,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Family Trip',
                                style: lightTextStyle.copyWith(
                                  fontSize: 12,
                                  color: darkGrayColor,
                                ),
                              ),
                              Text(
                                'IDR 2.500.000',
                                style: regularTextStyle.copyWith(
                                  fontSize: 12,
                                  color: whiteColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Hotel',
                                style: lightTextStyle.copyWith(
                                  fontSize: 12,
                                  color: darkGrayColor,
                                ),
                              ),
                              Text(
                                'IDR 500.000',
                                style: regularTextStyle.copyWith(
                                  fontSize: 12,
                                  color: whiteColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Service Fee',
                                style: lightTextStyle.copyWith(
                                  fontSize: 12,
                                  color: darkGrayColor,
                                ),
                              ),
                              Text(
                                'IDR 50.000',
                                style: regularTextStyle.copyWith(
                                  fontSize: 12,
                                  color: whiteColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: regularTextStyle.copyWith(
                                  fontSize: 12,
                                  color: darkGrayColor,
                                ),
                              ),
                              Text(
                                'IDR 550.000',
                                style: regularTextStyle.copyWith(
                                  fontSize: 12,
                                  color: orangeColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
