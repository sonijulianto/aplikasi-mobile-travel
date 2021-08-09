import 'package:aplikasi_travel/shared/theme.dart';
import 'package:aplikasi_travel/widgets.dart/custom_button.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: double.infinity,
        height: 211,
        padding: EdgeInsets.all(
          defaultMargin,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/image_bonus.png',
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: purpleColor.withOpacity(0.4),
                blurRadius: 50,
                offset: Offset(0, 10),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Kezia Anne',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/logo.png',
                      ),
                    ),
                  ),
                ),
                Text(
                  'Pay',
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(
                fontWeight: light,
              ),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteTextStyle.copyWith(
                fontSize: 26,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 50,
        ),
        child: Text(
          'Big Bonus 🎉',
          style: primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 10,
        ),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startFlyButton() {
      return CustomButton(
        title: 'Start Fly Now',
        onPressed: () {
          Navigator.pushNamed(context, '/main');
        },
        width: 220,
        margin: EdgeInsets.only(top: 50),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 38,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              bonusCard(),
              title(),
              subTitle(),
              startFlyButton(),
            ],
          ),
        ),
      ),
    );
  }
}
