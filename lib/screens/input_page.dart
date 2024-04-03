import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/Icon_Content.dart';
import '../components/Reusable_Card.dart';
import '../constants.dart';
import '../result_page.dart';
import '../components/buttom_botton.dart';
import '../components/roundicon_button.dart';



enum GenderType{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // void UpdateColor( GenderType gender){
  //   //male = 1, female = 2
  //   if(gender == GenderType.male){
  //     if(maleCardColor == inactiveCardColor){
  //       maleCardColor = activeCardcolour;
  //       femaleCardColor =inactiveCardColor;
  //     }else{
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   if(gender == GenderType.female){
  //     if(femaleCardColor == inactiveCardColor){
  //       femaleCardColor = activeCardcolour;
  //       maleCardColor = inactiveCardColor;
  //     }else{
  //       femaleCardColor = inactiveCardColor;
  //     }
  //   }
  //
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Center(
          child: Text('BMI CALCULATOR',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    setState(() {
                    selectedGender = GenderType.male;
                    });
                  },
                    colour: selectedGender == GenderType.male ? kActiveCardcolour : kInactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars, label: 'MALE',
                  ),
                ),
              ),
              SizedBox(width: 5),
              Expanded(
                child: ReusableCard(
                  onPress: (){
                    selectedGender =GenderType.female;
                  },
                    colour: selectedGender == GenderType.female ? kActiveCardcolour : kInactiveCardColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMLAE',
                  ),
                )
              ),
            ],
          ),
      ),
          Expanded(child: Column(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: kInactiveCardColor,
                  cardChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('HEIGHT',
                      style: kLabelTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(),
                          style: kTextSize,
                          ),
                            Text('cm',style: kLabelTextStyle,)
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Color(0xffeb1555),
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Color(0xff8d8e98),
                          overlayColor: Color(0x29eb1555),
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                        ),
                        child: Slider(value: (height.toDouble()),min: 120.0, max: 220.0,
                            onChanged: (double newValue){
                          setState(() {
                            height = newValue.round();
                          });
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                cardChild: Column(
                  children: [
                    Text('WEIGHT',
                  style: kLabelTextStyle,),
                 Text(weight.toString(),
                 style: kTextSize,),
                Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundIconButton(icon: FontAwesomeIcons.minus,
                  onPressed: (){
                      setState(() {
                        weight--;
                      });
                  },)

                  ],
                ),
                  SizedBox(width: 20,),
                  RoundIconButton(icon: FontAwesomeIcons.plus,
                  onPressed: (){
                    setState(() {
                      weight++;
                    });
                  },)
                  ],
    
                ),
                    colour: kInactiveCardColor
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: ReusableCard(
                  cardChild: Column(
                    children: [
                      Text('AGE',
                      style: kLabelTextStyle,),
                      Text(age.toString(),
                      style: kTextSize,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(icon: FontAwesomeIcons.minus,
                              onPressed:(){
                            setState(() {
                              age--;
                            });
                              } ),
                          SizedBox(width: 5,),
                          RoundIconButton(icon: FontAwesomeIcons.plus,
                              onPressed: (){
                            setState(() {
                              age++;
                            });
                              })
                        ],
                      ),
                    ],
                  ),
                    colour: kInactiveCardColor
                )
              ),
            ],
          ),),
          ButtomButton(
            buttonTitle: 'CALCULATE',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage()));
            },
          ),
        ],
      ),

    );
  }

}







