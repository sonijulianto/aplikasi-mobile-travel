import 'package:aplikasi_travel/shared/theme.dart';
import 'package:aplikasi_travel/widgets.dart/custom_button.dart';
import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/background_image.png',
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Spacer(),
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
                Text(
                  'yourself get an amazing experiences',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                ),
                CustomButton(
                    title: 'Get Started',
                    width: 220,
                    margin: EdgeInsets.only(top: 50, bottom: 80),
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign-up');
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
