import 'package:flutter/material.dart';
import 'package:flutterui/constants.dart';

class CustomIconWidget extends StatelessWidget {
  final String widgetText;
  final IconData widgetIcon;

  const CustomIconWidget({
    super.key,
    required this.widgetText,
    required this.widgetIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          widgetIcon,
          size: 80.0,
          color: Colors.white,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          widgetText,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
