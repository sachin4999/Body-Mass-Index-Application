import 'package:flutter/material.dart';
import 'package:body_mass_app/components/constants.dart';

class Reusable_Card extends StatelessWidget {
  Reusable_Card({@required this.colour, this.cardChild, this.onClick});

  final Color colour;
  final Widget cardChild;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class customIcon extends StatelessWidget {
  customIcon({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 50.0,
          color: Colors.white,
        ),
        SizedBox(height: 20.0),
        Text(
          label,
          style: kLabelstyle,
        ),
      ],
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonText, @required this.navigation});

  final String buttonText;
  final Function navigation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigation,
      child: Container(
        child: Center(
          child: Text(
            buttonText,
            style: kBottomTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        width: double.infinity,
        padding: EdgeInsets.only(bottom: 20.0),
        height: kBottomContainerheight,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.iconData, @required this.onClick});

  final IconData iconData;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onClick,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: kActiveColor,
      child: Icon(iconData),
    );
  }
}
