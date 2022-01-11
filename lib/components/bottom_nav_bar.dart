// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: kDefaultPadding * 2, 
          right: kDefaultPadding * 2,
          bottom: kDefaultPadding
          ),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -10),
              color: kPrimaryColor.withOpacity(0.35),
              blurRadius: 30),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage("images/flower.png"),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage("images/heart.png"),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image(
              image: AssetImage("images/user.png"),
            ),
          ),
        ],
      ),
    );
  }
}
