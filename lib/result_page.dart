import 'package:flutter/material.dart';
import 'formula.dart';

class ResultPage extends StatefulWidget {
  final weight;
  final height;
  final age;
  ResultPage({@required this.weight, @required this.height, this.age});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Logic logic = Logic();
  double bmiResult = 0;
  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height, widget.weight);
//bmiResult = bmiResult.toStringAsFixed(2)
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff090e21),
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: const Color(0xff090e21),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "BMI Result",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "${bmiResult.toStringAsFixed(2)}",
                style: const TextStyle(
                  fontSize: 70,
                  color: Color(0xffeb1555),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
