import 'package:flutter/material.dart';

class bmiResult extends StatelessWidget {
  final double result;
  final int age;
  final bool ismale;
  bmiResult(@required this.age, @required this.result, @required this.ismale);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI RESULT",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w800),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GENDER : ${ismale ? "male" : "fmale"}",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),
            Text(
              "RESULT :${result.round()} ",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            ),
            Text(
              "AGE :$age ",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
