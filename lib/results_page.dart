import 'package:flutter/material.dart';
import 'package:flutterui/constants.dart';
import 'package:flutterui/reusable_card.dart';
import 'package:flutterui/utility.dart';

class Results extends StatelessWidget {
  final String bmiValue;
  const Results({super.key, required this.bmiValue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text(
              'Your Result',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            ReusableCard(
              color: activeCardColor,
              cardChild: SizedBox(
                height: 500,
                width: 500,
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            BMIUtility.categorizeWeight(bmiValue),
                            style: TextStyle(
                              color: BMIUtility.getColorForBmi(bmiValue),
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            bmiValue,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            BMIUtility.getFeedback(bmiValue),
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
