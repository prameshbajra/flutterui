import 'package:flutter/material.dart';
import 'package:flutterui/constants.dart';
import 'package:flutterui/custom_icon.dart';
import 'package:flutterui/reusable_card.dart';
import 'package:flutterui/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const BMICalculator());

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
  int height = 160;
  int weight = 60;

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
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'HEIGHT',
                          style: labelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: labelBoldTextStyle,
                            ),
                            const Text(
                              'cm',
                              style: labelTextStyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: activeSliderColor,
                            inactiveTrackColor: inactiveSliderColor,
                            thumbColor: activeSliderColor,
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 15.0,
                            ),
                            overlayColor: activeSliderColor.withOpacity(0.16),
                            overlayShape: const RoundSliderOverlayShape(
                                overlayRadius: 30.0),
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: 50,
                            max: 400,
                            onChanged: (double newValue) {
                              setState(() {
                                height = newValue.toInt();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: activeCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'WEIGHT',
                          style: labelTextStyle,
                        ),
                        Text(weight.toString(), style: labelBoldTextStyle),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                onButtonPressedHandler: () {
                                  setState(() {
                                    weight -= 1;
                                  });
                                },
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onButtonPressedHandler: () {
                                  setState(() {
                                    weight += 1;
                                  });
                                },
                              )
                            ])
                      ],
                    ),
                  ),
                ),
                const Expanded(
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
