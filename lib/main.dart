import 'package:badjokes/answer.dart';
import 'package:badjokes/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var jokes = [
    {
      "question": "What does a baby computer call its father?",
      "answer": "Data"
    },
    {
      "question": "What's a pencil with two erasers called?",
      "answer": "Pointless"
    },
    {
      "question": "Why is the calendar always scared?",
      "answer": "Because it's days are numbered"
    },
    {"question": "What do you call a fish with no eye", "answer": "Fsh"},
  ];

  var counter = 0;
  changeJokeIndex(String direction) {
    setState(() {
      if (direction == "next") {
        counter++;
        if (counter == 4) {
          counter = 0;
        }
      } else if (direction == "previous") {
        counter--;
        if (counter == -1) {
          counter = jokes.length - 1;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bad jokes app',
      home: Scaffold(
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Question(question: jokes[counter]["question"] as String),
            Answer(answer: jokes[counter]["answer"] as String),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: FloatingActionButton(
                    onPressed: () {
                      changeJokeIndex("previous");
                    },
                    child: Icon(
                      Icons.arrow_left_rounded,
                      size: 50,
                    ),
                    backgroundColor: Colors.purple,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: FloatingActionButton(
                      onPressed: () {
                        changeJokeIndex("next");
                      },
                      child: Icon(
                        Icons.arrow_right_rounded,
                        size: 50,
                      ),
                      backgroundColor: Colors.purple),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
