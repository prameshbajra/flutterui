import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final VoidCallback? onTapHandler;

  const ReusableCard(
      {super.key, required this.color, this.cardChild, this.onTapHandler});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapHandler,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
