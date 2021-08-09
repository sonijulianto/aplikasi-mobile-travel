import 'package:aplikasi_travel/shared/theme.dart';
import 'package:aplikasi_travel/widgets.dart/custom_button.dart';
import 'package:aplikasi_travel/widgets.dart/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Text(
          'Join us and get \nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              title: 'Full Name',
              hintText: 'Your Full Name',
            ),
            CustomTextFormField(
              title: 'Email Address',
              hintText: 'Your Email Address',
            ),
            CustomTextFormField(
              title: 'Password',
              hintText: 'Your Password',
              obsecureText: true,
            ),
            CustomTextFormField(
              title: 'Hobby',
              hintText: 'Your Hobby',
            ),
            CustomButton(
              title: 'Get Started',
              margin: EdgeInsets.only(top: 30),
              onPressed: () {
                Navigator.pushNamed(context, '/bonus');
              },
            ),
          ],
        ),
      );
    }

    Widget termText() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 70),
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            title(),
            inputSection(),
            termText(),
          ],
        ),
      ),
    );
  }
}
