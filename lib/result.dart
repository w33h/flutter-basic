import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? resultScore;
  final VoidCallback resetHandler;

  Result({this.resultScore, required this.resetHandler});

  String get returnGrade {
    String grade;

    if (resultScore! <= 10) {
      grade = 'Your grade is C with a score of $resultScore';
    } else if (resultScore! <= 20) {
      grade = 'Your grade is B with a score of $resultScore';
    } else {
      grade = 'Your grade is A with a score of $resultScore';
    }

    return grade;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100),
            child: Text(
              returnGrade,
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 150),
            child: ElevatedButton(
              onPressed: () => resetHandler(),
              child: Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 35),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
