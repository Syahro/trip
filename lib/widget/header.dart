import 'package:flutter/material.dart';

import '../theme.dart';

class Header extends StatelessWidget {
  final String imageUrl;
  final String pageTitle;
  final String title;

  Header({
    this.imageUrl,
    this.pageTitle,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                child:
                    Image.asset(imageUrl, width: 24, height: 20),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              pageTitle,
              style: mediumTextstyle.copyWith(fontSize: 24, color: whiteColor),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: regularTextStyle.copyWith(
            color: whiteColor,
            fontSize: 24,
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
