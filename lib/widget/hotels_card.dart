import 'package:flutter/material.dart';

import '../theme.dart';

class HotelsCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String location;
  final String price;
  final bool starFive;

  HotelsCard({
    this.imageUrl,
    this.name,
    this.location,
    this.price,
    this.starFive,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imageUrl,
                    width: double.infinity,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: 41,
                      width: 164,
                      decoration: BoxDecoration(
                        color: cardColor.withOpacity(0.4),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Center(
                        child: Text.rich(TextSpan(
                          text: 'IDR $price ',
                          style: regularTextStyle.copyWith(
                            fontSize: 14,
                            color: orangeColor,
                            letterSpacing: 3,
                          ),
                          children: [
                            TextSpan(
                                text: '/ Night',
                                style: lightTextStyle.copyWith(
                                  fontSize: 12,
                                  color: whiteColor,
                                ))
                          ],
                        )),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: regularTextStyle.copyWith(
                      fontSize: 16,
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: darkGrayColor,
                        size: 10,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        location,
                        style: lightTextStyle.copyWith(
                          color: darkGrayColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              Icon(
                Icons.star,
                color: orangeColor,
                size: 17,
              ),
              Icon(
                Icons.star,
                color: orangeColor,
                size: 17,
              ),
              Icon(
                Icons.star,
                color: orangeColor,
                size: 17,
              ),
              Icon(
                Icons.star,
                color: orangeColor,
                size: 17,
              ),
              Icon(
                Icons.star,
                color: starFive ? orangeColor : darkGrayColor,
                size: 17,
              ),
            ],
          )
        ],
      ),
    );
  }
}
