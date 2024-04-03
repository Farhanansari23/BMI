import 'package:bmicalculatorflutter/components/Reusable_Card.dart';
import 'package:bmicalculatorflutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculatorflutter/components/buttom_botton.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result',
                style: kTitleTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
              child: ReusableCard(
                colour: kActiveCardcolour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                        '18.0',
                    style: kBMITextStyle,
                    ),
                    Text('Your BMI is too low you need to eat more!',
                      textAlign: TextAlign.center,
                      style: kBodyTextStyle,)
                  ],
                ),
              )
          ),
         ButtomButton(buttonTitle: 'RE-CALCULATE',onTap: (){
           Navigator.pop(context);
         },)
        ],
      ),
    );
  }
}
