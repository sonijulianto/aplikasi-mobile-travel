import 'package:aplikasi_travel/shared/theme.dart';
import 'package:flutter/material.dart';

class ButtonNavigationBarItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;
  const ButtonNavigationBarItem(
      {Key? key, required this.imageUrl, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? purpleColor : Colors.transparent,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
