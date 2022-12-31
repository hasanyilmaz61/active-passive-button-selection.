import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: like(),
      ),
    );
  }
}

class like extends StatefulWidget {
  const like({Key? key}) : super(key: key);

  @override
  State<like> createState() => _likeState();
}

class _likeState extends State<like> {
  List<Widget> iconlar = [];

  List<String> questions = [
    "Titanic is the largest ship ever",
    "The number of chickens in the world is more than the number of people",
    "The life span of butterflies is one day",
    "The world is flat",
    "Fatih Sultan Mehmet never ate potatoes",
    "congratulations questions are over."
  ];

  int questionsIndex = 0;
  List<bool> Answers = [false, true, false, false, true];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Text(
                questions[questionsIndex],
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Wrap(
            children: iconlar,
            spacing: 5,
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      Answers[questionsIndex] == false
                          ? iconlar.add(trueIcon)
                          : iconlar.add(falseIcon);

                      questionsIndex++;
                      if (questions[questionsIndex] == questions.length) {
                        return;
                      }
                      ;
                    });
                  },
                  child: Container(
                    width: 175,
                    height: 75,
                    color: Colors.red,
                    child: Icon(
                      Icons.thumb_down,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    setState(() {
                      Answers[questionsIndex] == true
                          ? iconlar.add(trueIcon)
                          : iconlar.add(falseIcon);
                      questionsIndex++;
                      if (questions[questionsIndex] == questions.length) {
                        return;
                      }
                      ;
                    });
                  },
                  child: Container(
                    width: 175,
                    height: 75,
                    color: Colors.green,
                    child: Icon(
                      Icons.thumb_up,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

const trueIcon = Icon(Icons.mood, color: Colors.lightGreen);
const falseIcon = Icon(Icons.mood_bad, color: Colors.redAccent);
