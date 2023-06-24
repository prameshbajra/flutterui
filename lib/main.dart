import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Quiz'),
        ),
        body: const SafeArea(
          child: QuizPage(),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Map<String, dynamic>> questionSet = [
    {'question': 'The capital of Australia is Sydney?', 'answer': false},
    {
      'question':
          'The symbol for the element Iron on the periodic table is Fe?',
      'answer': true
    },
    {
      'question': 'Jupiter is the largest planet in our solar system?',
      'answer': true
    },
    {'question': 'The Second World War ended in 1944?', 'answer': false},
    {
      'question': 'The Mona Lisa was painted by Vincent van Gogh?',
      'answer': false
    },
    {'question': 'The square root of 81 is 9?', 'answer': true},
    {
      'question': 'Joe Biden was the President of the United States in 2021?',
      'answer': true
    },
    {'question': 'Hummus is primarily made of lentils?', 'answer': false},
    {'question': 'Minecraft was developed by Mojang?', 'answer': true},
    {'question': 'Elephants are the largest land animal?', 'answer': true}
  ];
  List<Icon> scores = [];
  int questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> question = questionSet[questionIndex];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              question['question'] ?? 'Error',
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 30),
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: scores,
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => {
              setState(
                () => {
                  if (questionIndex < questionSet.length - 1)
                    {
                      questionIndex += 1,
                      if (question['answer'])
                        {
                          scores.add(const Icon(
                            Icons.check,
                            color: Colors.green,
                          ))
                        }
                      else
                        {
                          scores.add(const Icon(
                            Icons.close,
                            color: Colors.red,
                          ))
                        },
                    },
                },
              ),
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.green,
              ),
            ),
            child: const Text('True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () => {
              setState(
                () => {
                  if (questionIndex < questionSet.length - 1)
                    {
                      questionIndex += 1,
                      if (!question['answer'])
                        {
                          scores.add(
                            const Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                          ),
                        }
                      else
                        {
                          scores.add(
                            const Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          )
                        },
                    }
                },
              ),
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(
                Colors.red,
              ),
            ),
            child: const Text('False',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                )),
          ),
        ),
      ],
    );
  }
}
