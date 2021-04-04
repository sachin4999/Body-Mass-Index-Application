import 'package:flutter/material.dart';
import 'package:body_mass_app/components/constants.dart';
import 'package:body_mass_app/components/extractedWidget.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Reusable_Card(
                colour: kInactiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset('images/bmi.png'),
                    SizedBox(height: 80.0),
                    Text(
                      'Welcome To The BMI App.',
                      style: kWeightTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 80.0),
                    Text(
                      'To Calculate Your BMI, Tap The Button',
                      style: kWeightTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
              buttonText: 'CALCULATE BMI',
              navigation: () {
                Navigator.popAndPushNamed(context, '/first');
              }),
        ],
      ),
    );
  }
}
