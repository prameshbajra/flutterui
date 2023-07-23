import 'package:flutter/material.dart';
import 'package:flutterui/constants.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onButtonPressedHandler;

  const RoundIconButton(
      {super.key, required this.icon, required this.onButtonPressedHandler});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onButtonPressedHandler,
      elevation: 0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: buttonColor,
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
