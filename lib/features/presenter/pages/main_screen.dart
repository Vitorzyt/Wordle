import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/services.dart';
import 'package:wordle/features/presenter/widgets/constants/keyboard_container.dart';

import '../widgets/constants/aligment_constants.dart';
import '../widgets/wordle_container.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    //  double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 252, 254, 255),
        title: Center(
          child: Text(
            'Wordle',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: kmainAxis,
                //   crossAxisAlignment: kcrossAxis,
                children: [
                  Column(
                    // mainAxisAlignment: kmainAxis,
                    crossAxisAlignment: kcrossAxis,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      wordle_container1(0),
                      wordle_container1(1),
                      wordle_container1(2),
                      wordle_container1(3),
                      wordle_container1(4),
                      wordle_container1(5),
                    ],
                  ),
                  Column(
                    // crossAxisAlignment: kcrossAxis,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      wordle_container2(0),
                      wordle_container2(1),
                      wordle_container2(2),
                      wordle_container2(3),
                      wordle_container2(4),
                      wordle_container2(5),
                    ],
                  ),
                  Column(
                    // crossAxisAlignment: kcrossAxis,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      wordle_container3(0),
                      wordle_container3(1),
                      wordle_container3(2),
                      wordle_container3(3),
                      wordle_container3(4),
                      wordle_container3(5),
                    ],
                  ),
                  Column(
                    // crossAxisAlignment: kcrossAxis,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      wordle_container4(0),
                      wordle_container4(1),
                      wordle_container4(2),
                      wordle_container4(3),
                      wordle_container4(4),
                      wordle_container4(5),
                    ],
                  ),
                  Column(
                    // crossAxisAlignment: kcrossAxis,
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      wordle_container5(0),
                      wordle_container5(1),
                      wordle_container5(2),
                      wordle_container5(3),
                      wordle_container5(4),
                      wordle_container5(5),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: kmainAxis,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  keybord_container('Q'),
                  keybord_container('W'),
                  keybord_container('E'),
                  keybord_container('R'),
                  keybord_container('T'),
                  keybord_container('Y'),
                  keybord_container('U'),
                  keybord_container('I'),
                  keybord_container('O'),
                  keybord_container('P'),
                ],
              ),
              Row(
                mainAxisAlignment: kmainAxis,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  keybord_container('A'),
                  keybord_container('S'),
                  keybord_container('D'),
                  keybord_container('F'),
                  keybord_container('G'),
                  keybord_container('H'),
                  keybord_container('J'),
                  keybord_container('K'),
                  keybord_container('L'),
                ],
              ),
              Row(
                mainAxisAlignment: kmainAxis,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  enter_keybord_container('ENTER'),
                  keybord_container('Z'),
                  keybord_container('X'),
                  keybord_container('C'),
                  keybord_container('V'),
                  keybord_container('B'),
                  keybord_container('N'),
                  keybord_container('M'),
                  keybord_container('Z'),
                  special_keybord_container(''),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
