import 'package:flutter/material.dart';
import '../theme.dart';

class CardTrip extends StatelessWidget {
  final String title;
  final String subTitle;
  final bool isSelect;

  CardTrip({
    this.title,
    this.subTitle,
    this.isSelect,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 79,
      width: double.infinity,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: isSelect ? orangeColor : Colors.transparent,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: regularTextStyle.copyWith(
                        color: whiteColor,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      subTitle,
                      style: regularTextStyle.copyWith(
                        color: darkGrayColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                isSelect
                    ? Image.asset(
                        'assets/icons/checklist.png',
                        width: 25,
                        height: 25,
                      )
                    : SizedBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
