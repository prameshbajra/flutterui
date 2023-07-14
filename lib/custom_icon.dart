import 'package:flutter/material.dart';

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
          style: const TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}
