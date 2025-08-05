import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonText, required this.onPress});
  final String buttonText;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: 10, bottom: 15, right: 40, left: 40),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(child: Text(buttonText, style: kLargeButtonTextStyle)),
      ),
    );
  }
}
