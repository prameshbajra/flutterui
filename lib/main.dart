import 'package:flutter/material.dart';
import 'package:flutterui/custom_icon.dart';
import 'package:flutterui/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const BMICalculator());

const Color bottomContainerColor = Color(0xFFEB1555);
const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);

enum Gender {
  male,
  female,
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      home: const InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onTapHandler: () {
                      setState(() => selectedGender = Gender.male);
                    },
                    color: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: const CustomIconWidget(
                        widgetIcon: FontAwesomeIcons.mars, widgetText: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTapHandler: () {
                      setState(() => selectedGender = Gender.female);
                    },
                    color: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: const CustomIconWidget(
                      widgetIcon: FontAwesomeIcons.venus,
                      widgetText: 'FEMALE',
                    ),
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                )
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
