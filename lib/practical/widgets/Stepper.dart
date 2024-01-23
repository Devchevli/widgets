import 'package:flutter/material.dart';

class Stepper_page extends StatefulWidget {
  const Stepper_page({super.key});

  @override
  State<Stepper_page> createState() => _Stepper_pageState();
}

class _Stepper_pageState extends State<Stepper_page> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Stepper(
        currentStep: _index,
        onStepCancel: () {
          if (_index > 0) {
            setState(() {
              _index -= 1;
            });
          }
        },
        onStepContinue: () {
          if (_index < 1 ) {

            setState(() {
              _index += 1;
            });
          }
          print(_index.toString());
        },
        onStepTapped: (int index) {
          setState(() {
            _index = index;
          });

        },
        steps: [
          Step(
            title: const Text("step1"),
            content: Container(
              alignment: Alignment.centerLeft,
              child: const Text("Content for step1"),
            ),
            isActive: _index>0,
          ),
          Step(
            title: Text("step2"),
            content: Text("content for step 2"),
          ),

        ],
      ),
    );
  }
}
