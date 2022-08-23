import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:n_flutter/result_page.dart';
import 'enum_file.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedCard = Gender.n;
  Color fc1 = Colors.white; // fontColor
  Color sc1 = Color(0xffeb1555); // change font color
  Color fc2 = Colors.white;
  Color sc2 = Color(0xffeb1555);

  int weight = 50;
  int age = 30;

  Color boff1 = Color(0xff4c4f5e); // button off hoy tyare
  Color bpress1 = Color(0xff6e6f7a); // button press kariye tyare

  Color boff2 = Color(0xff4c4f5e);
  Color bpress2 = Color(0xff6e6f7a);

  Color boff3 = Color(0xff4c4f5e);
  Color bpress3 = Color(0xff6e6f7a);

  Color boff4 = Color(0xff4c4f5e);
  Color bpress4 = Color(0xff6e6f7a);

  Color ioff1 = Colors.white;
  Color ipress1 = Color(0xffeb1555);

  Color ioff2 = Colors.white;
  Color ipress2 = Color(0xffeb1555);

  Color ioff3 = Colors.white;
  Color ipress3 = Color(0xffeb1555);

  Color ioff4 = Colors.white;
  Color ipress4 = Color(0xffeb1555);
  double sliderVal = 156;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff090e21),
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: const Color(0xff090e21),
        child: Column(
          children: [
// first row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = Gender.female;
                          fc2 = Colors.white;
                          fc1 = sc1;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.venus,
                              size: 100,
                              color: fc1,
                            ),
                            SizedBox(height: 15),
                            Text("Female",
                                style: TextStyle(
//fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: fc1,
                                )),
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: selectedCard == Gender.female
                              ? Color(0xff3b3c4c)
                              : Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = Gender.male;
                          fc2 = sc2;
                          fc1 = Colors.white;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.mars,
                              size: 100,
                              color: fc2,
                            ),
                            SizedBox(height: 15),
                            Text("Male",
                                style: TextStyle(
//fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: fc2,
                                )),
                          ],
                        ),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: selectedCard == Gender.male
                              ? Color(0xff3b3c4c)
                              : Color(0xff1d1e33),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
//second row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "HEIGHT",
                            style: TextStyle(
                              fontSize: 21,
                              color: Color(0xff626473),
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "${sliderVal.toInt()}",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(bottom: 4),
                                child: Text(
                                  " cm",
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Color(0xff626473),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Slider(
                            value: sliderVal,
                            min: 120.0,
                            max: 225.0,
                            onChanged: (val) {
                              setState(() {
                                sliderVal = val;
                              });
                            },
                            inactiveColor: Color(0xff555555),
                            activeColor: Color(0xfff5c1d1),
                            thumbColor: Color(0xffeb1555),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
//3rd row
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight--;
                                    boff1 = bpress1;
                                    boff2 = Color(0xff4c4f5e);
                                    ioff1 = ipress1;
                                    ioff2 = Colors.white;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: boff1,
                                  radius: 28,
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    color: ioff1,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight++;
                                    boff2 = bpress2;
                                    boff1 = Color(0xff4c4f5e);
                                    ioff2 = ipress2;
                                    ioff1 = Colors.white;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: boff2,
                                  radius: 28,
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: ioff2,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age--;
                                    boff3 = bpress3;
                                    boff4 = Color(0xff4c4f5e);
                                    ioff3 = ipress3;
                                    ioff4 = Colors.white;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: boff3,
                                  radius: 28,
                                  child: Icon(
                                    FontAwesomeIcons.minus,
                                    color: ioff3,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age++;
                                    boff4 = bpress4;
                                    boff3 = Color(0xff4c4f5e);
                                    ioff4 = ipress4;
                                    ioff3 = Colors.white;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: boff4,
                                  radius: 28,
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: ioff4,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xff1d1e33),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
// button
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              height: 130,
                              weight: 50,
                              age: 30,
                            )));
              },
              child: Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color(0xffeb1555),
                ),
                child: const Center(
                  child: Text(
                    "Calculate",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
