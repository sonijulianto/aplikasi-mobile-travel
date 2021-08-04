import 'package:aplikasi_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            right: defaultMargin,
            left: defaultMargin,
            bottom: 30,
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/fi_globe.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/fi_book-open.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: transparentColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/fi_credit-card.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: transparentColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/fi_settings.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 2,
                    decoration: BoxDecoration(
                      color: transparentColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
