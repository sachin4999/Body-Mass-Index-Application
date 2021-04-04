import 'package:flutter/material.dart';
import 'package:body_mass_app/components/constants.dart';
import 'package:body_mass_app/components/extractedWidget.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: kBottomTextStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kNumberTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reusable_Card(
              colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kWeightTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kCalculation,
                  ),
                  Text(
                    interpretation,
                    style: kResult,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonText: 'RE - CALCULATE',
              navigation: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
