import 'package:bmi_calculator/BmiCalculator.dart';
import 'package:bmi_calculator/Constant.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'Widgetpage.dart';

class Result extends StatelessWidget {
  Result({@required this.bmiValue, @required this.result, @required this.explanation});
  final String bmiValue;
  final String result;
  final String explanation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "BMI CALCULATOR",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Text(
              "Your Result",
              textAlign: TextAlign.center,
              style: ktitleTextStyle,
            )),
            Expanded(
                flex: 5,
                child: ReusableCard(
                  colour: activeCardColour,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        result,
                        style: resultTextStyle,
                      ),
                      Text(
                        bmiValue,
                        style: kbmiResultTextStyle,
                      ),
                      Text(
                        explanation,
                        textAlign: TextAlign.center,
                        style: kbmiExplianTextStyle,
                      ),
                    ],
                  ),
                )),
            BottomButton(
                text: 'RE-EVALUATE',
                onpress: () {
                  Navigator.pop(context);
                })
          ],
        ));
  }
}
