// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, deprecated_member_use, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/components/featurred_plants.dart';
import 'package:plant_app/screens/components/recommend_plants.dart';
import 'package:plant_app/screens/components/title_with_more_btn.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  // to provide us total height and width of our screen
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // it enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            press: () {},
            title: 'Recommend',
          ),
          // it will cover 40% of our screens
          RecommendPlants(),
          TitleWithMoreBtn(title: "Features Plants", press: () {}),
          FeaturePlants(),
          SizedBox(height: kDefaultPadding,),
        ],
      ),
    );
  }
}

