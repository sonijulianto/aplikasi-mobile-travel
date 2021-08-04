import 'package:aplikasi_travel/shared/theme.dart';
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
      Widget nameInput() {
        return Container(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Full Name'),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                decoration: InputDecoration(
                  hintText: 'Your full name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: purpleColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email Address'),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                decoration: InputDecoration(
                  hintText: 'Your email address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: purpleColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: EdgeInsets.only(
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Password'),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: purpleColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget hobbyInput() {
        return Container(
          margin: EdgeInsets.only(
            bottom: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hobby'),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                cursorColor: blackColor,
                decoration: InputDecoration(
                  hintText: 'Your hobby',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: purpleColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget getStartedButton() {
        return Container(
          height: 55,
          width: double.infinity,
          margin: EdgeInsets.only(
            bottom: 50,
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: purpleColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            },
            child: Text(
              'Get Started',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium,
              ),
            ),
          ),
        );
      }

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
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            getStartedButton(),
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
