import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton({required this.icon, required this.onPress});

  final IconData icon;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
