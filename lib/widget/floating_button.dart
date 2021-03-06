import 'package:flutter/material.dart';
import 'package:trip/theme.dart';

class FloatingButton extends StatelessWidget {
  final Color buttonColor;
  final String name;

  FloatingButton({
    this.buttonColor,
    this.name,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width - (2 * defaultMargin),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: semiBoldTextStyle.copyWith(
                color: whiteColor,
                fontSize: 16,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: whiteColor,
              size: 25,
            ),
          ],
        ),
      ),
    );
  }
}
