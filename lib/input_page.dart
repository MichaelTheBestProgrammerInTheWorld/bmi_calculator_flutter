import 'dart:ffi';

import 'package:bmi_calculator_flutter/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    child: ReusableCard(activeCardColor,
                        IconContent(FontAwesomeIcons.mars, 'MALE'))),
                Expanded(
                    child: ReusableCard(activeCardColor,
                        IconContent(FontAwesomeIcons.venus, 'FEMALE'))),
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
