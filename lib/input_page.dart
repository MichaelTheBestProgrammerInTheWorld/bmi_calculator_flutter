import 'dart:ffi';

import 'package:bmi_calculator_flutter/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

enum Gender { MALE, FEMALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedgender = Gender.MALE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedgender = Gender.MALE;
                    });
                  },
                  child: ReusableCard(
                      selectedgender == Gender.MALE
                          ? activeCardColor
                          : inactiveCardColor,
                      IconContent(FontAwesomeIcons.mars, 'MALE')),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedgender = Gender.FEMALE;
                    });
                  },
                  child: ReusableCard(
                      selectedgender == Gender.FEMALE
                          ? activeCardColor
                          : inactiveCardColor,
                      IconContent(FontAwesomeIcons.venus, 'FEMALE')),
                )),
              ],
            )),
            Expanded(child: ReusableCard(activeCardColor, Container())),
            Expanded(
                child: Row(
              children: [
                Expanded(child: ReusableCard(activeCardColor, Container())),
                Expanded(child: ReusableCard(activeCardColor, Container())),
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
