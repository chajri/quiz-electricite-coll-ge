import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(ExamApp());
}

class ExamApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text('Quiz Electricité Niveau Collège'),
        ),
body: Padding(
  padding: const EdgeInsets.all(20.0),
  child:   ExamPage(





  ),
) ,
      ),
    );
  }
}


class ExamPage extends StatefulWidget {
  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  List<Padding> answerResult = [];
  List<String> questions = [
    'Comment sont associées les lampes L1 et L2',
    'Comment sont associées les lampes L3 et L4',
    'Comment sont associées les lampes L5 et L6',
    'Comment sont associées les lampes L6 et L7',
  ];
  List<String> questionImage = [
    'images/image-1.jpg',
    'images/image-2.jpg',
    'images/image-3.jpg',
    'images/image-4.jpg',

  ];
  List<bool> answers = [
    true,
    true,
    false,
    false


  ];
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: answerResult,
        ),
        Expanded(
           flex: 5,
            child: Column(
              children: [
                Image.asset(questionImage[questionNumber]),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                questions[questionNumber],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ],
            ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            // ignore: deprecated_member_use
            child: FlatButton(
              color: Colors.indigo,
              child: Text(
                'VRAI',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctAnswer = answers[questionNumber];
                if (correctAnswer == true){
                  print('Votre reponse est juste');
                }else {
                  print('Votre reponse est fausse');

                }
                // questionNumber = questionNumber + 1;
                setState(() {
                  questionNumber++;
                });



              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            // ignore: deprecated_member_use
            child: FlatButton(
              color: Colors.deepOrange,
              child: Text(
                'FAUX',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                bool correctAnswer = answers[questionNumber];
                if (correctAnswer == false){
                  print('Votre reponse est juste');
                }else {
                  print('Votre reponse est fausse');

                }

                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),


      ],
    );
  }
}








