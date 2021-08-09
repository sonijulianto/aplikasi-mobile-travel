import 'package:aplikasi_travel/shared/theme.dart';
import 'package:aplikasi_travel/widgets.dart/button_navigation_bar_item.dart';
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
              ButtonNavigationBarItem(
                imageUrl: 'assets/fi_globe.png',
                isSelected: true,
              ),
              ButtonNavigationBarItem(imageUrl: 'assets/fi_credit-card.png'),
              ButtonNavigationBarItem(imageUrl: 'assets/fi_book-open.png'),
              ButtonNavigationBarItem(imageUrl: 'assets/fi_settings.png'),
            ],
          ),
        ),
      ),
    );
  }
}
