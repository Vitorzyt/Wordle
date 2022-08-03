import 'dart:math';

import 'package:flutter/material.dart';
import 'package:wordle/features/presenter/widgets/wordle_container.dart';

import '../../data/repositories/dictionary_list.dart';

class letterUpdater extends ChangeNotifier {
  String newFirstLetter = '';
  String newSecondLetter = '';
  String newThirdLetter = '';
  String newFourthLetter = '';
  String newFifthLetter = '';

  String letterMemory11 = '';
  String letterMemory21 = '';
  String letterMemory31 = '';
  String letterMemory41 = '';
  String letterMemory51 = '';

  String letterMemory12 = '';
  String letterMemory22 = '';
  String letterMemory32 = '';
  String letterMemory42 = '';
  String letterMemory52 = '';

  String letterMemory13 = '';
  String letterMemory23 = '';
  String letterMemory33 = '';
  String letterMemory43 = '';
  String letterMemory53 = '';

  String letterMemory14 = '';
  String letterMemory24 = '';
  String letterMemory34 = '';
  String letterMemory44 = '';
  String letterMemory54 = '';

  String letterMemory15 = '';
  String letterMemory25 = '';
  String letterMemory35 = '';
  String letterMemory45 = '';
  String letterMemory55 = '';

  String letterMemory16 = '';
  String letterMemory26 = '';
  String letterMemory36 = '';
  String letterMemory46 = '';
  String letterMemory56 = '';

  int counter = 0;
  Color color11 = Colors.white;
  Color color21 = Colors.white;
  Color color31 = Colors.white;
  Color color41 = Colors.white;
  Color color51 = Colors.white;

  Color color12 = Colors.white;
  Color color22 = Colors.white;
  Color color32 = Colors.white;
  Color color42 = Colors.white;
  Color color52 = Colors.white;

  Color color13 = Colors.white;
  Color color23 = Colors.white;
  Color color33 = Colors.white;
  Color color43 = Colors.white;
  Color color53 = Colors.white;

  Color color14 = Colors.white;
  Color color24 = Colors.white;
  Color color34 = Colors.white;
  Color color44 = Colors.white;
  Color color54 = Colors.white;

  Color color15 = Colors.white;
  Color color25 = Colors.white;
  Color color35 = Colors.white;
  Color color45 = Colors.white;
  Color color55 = Colors.white;

  Color color16 = Colors.white;
  Color color26 = Colors.white;
  Color color36 = Colors.white;
  Color color46 = Colors.white;
  Color color56 = Colors.white;

  int wordnumber = 0;
  List newWord = [];

  void changeletter(String letter) {
    if (newFirstLetter == '') {
      newFirstLetter = letter;
    } else if (newFirstLetter != '' && newSecondLetter == '') {
      newSecondLetter = letter;
    } else if (newFirstLetter != '' &&
        newSecondLetter != '' &&
        newThirdLetter == '') {
      newThirdLetter = letter;
    } else if (newFirstLetter != '' &&
        newSecondLetter != '' &&
        newThirdLetter != '' &&
        newFourthLetter == '') {
      newFourthLetter = letter;
    } else if (newFirstLetter != '' &&
        newSecondLetter != '' &&
        newThirdLetter != '' &&
        newFourthLetter != '' &&
        newFifthLetter == '') {
      newFifthLetter = letter;
    }

    notifyListeners();
  }

  void deleteLetter(String letter) {
    if (newFirstLetter != '' &&
        newSecondLetter != '' &&
        newThirdLetter != '' &&
        newFourthLetter != '' &&
        newFifthLetter != '') {
      newFifthLetter = '';
    } else if (newFirstLetter != '' &&
        newSecondLetter != '' &&
        newThirdLetter != '' &&
        newFourthLetter != '' &&
        newFifthLetter == '') {
      newFourthLetter = '';
    } else if (newFirstLetter != '' &&
        newSecondLetter != '' &&
        newThirdLetter != '' &&
        newFourthLetter == '' &&
        newFifthLetter == '') {
      newThirdLetter = '';
    } else if (newFirstLetter != '' &&
        newSecondLetter != '' &&
        newThirdLetter == '' &&
        newFourthLetter == '' &&
        newFifthLetter == '') {
      newSecondLetter = '';
    } else if (newFirstLetter != '' &&
        newSecondLetter == '' &&
        newThirdLetter == '' &&
        newFourthLetter == '' &&
        newFifthLetter == '') {
      newFirstLetter = '';
    }

    notifyListeners();
  }

  void enterWord() {
    if (newFifthLetter != '') {
      String word =
          '$newFirstLetter$newSecondLetter$newThirdLetter$newFourthLetter$newFifthLetter';
      ramdomWord();
      savingword();
      if (counter == 0) {
        colorChanger1();
      }
      if (counter == 1) {
        colorChanger2();
      }
      if (counter == 2) {
        colorChanger3();
      }
      if (counter == 3) {
        colorChanger4();
      }
      if (counter == 4) {
        colorChanger5();
      }
      if (counter == 5) {
        colorChanger6();
      }

      counter++;

      finishCheck();

      newFirstLetter = '';
      newSecondLetter = '';
      newThirdLetter = '';
      newFourthLetter = '';
      newFifthLetter = '';

      notifyListeners();
    }
  }

  void savingword() {
    if (counter == 0) {
      letterMemory11 = newFirstLetter;
      letterMemory21 = newSecondLetter;
      letterMemory31 = newThirdLetter;
      letterMemory41 = newFourthLetter;
      letterMemory51 = newFifthLetter;
    }
    if (counter == 1) {
      letterMemory12 = newFirstLetter;
      letterMemory22 = newSecondLetter;
      letterMemory32 = newThirdLetter;
      letterMemory42 = newFourthLetter;
      letterMemory52 = newFifthLetter;
    }
    if (counter == 2) {
      letterMemory13 = newFirstLetter;
      letterMemory23 = newSecondLetter;
      letterMemory33 = newThirdLetter;
      letterMemory43 = newFourthLetter;
      letterMemory53 = newFifthLetter;
    }
    if (counter == 3) {
      letterMemory14 = newFirstLetter;
      letterMemory24 = newSecondLetter;
      letterMemory34 = newThirdLetter;
      letterMemory44 = newFourthLetter;
      letterMemory54 = newFifthLetter;
    }
    if (counter == 4) {
      letterMemory15 = newFirstLetter;
      letterMemory25 = newSecondLetter;
      letterMemory35 = newThirdLetter;
      letterMemory45 = newFourthLetter;
      letterMemory55 = newFifthLetter;
    }
    if (counter == 5) {
      letterMemory16 = newFirstLetter;
      letterMemory26 = newSecondLetter;
      letterMemory36 = newThirdLetter;
      letterMemory46 = newFourthLetter;
      letterMemory56 = newFifthLetter;
      notifyListeners();
    }
  }

  bool finishCheck() {
    if (letterMemory11 == newWord[0] &&
            letterMemory21 == newWord[1] &&
            letterMemory31 == newWord[2] &&
            letterMemory41 == newWord[3] &&
            letterMemory51 == newWord[4] ||
        letterMemory12 == newWord[0] &&
            letterMemory22 == newWord[1] &&
            letterMemory32 == newWord[2] &&
            letterMemory42 == newWord[3] &&
            letterMemory52 == newWord[4] ||
        letterMemory13 == newWord[0] &&
            letterMemory23 == newWord[1] &&
            letterMemory33 == newWord[2] &&
            letterMemory43 == newWord[3] &&
            letterMemory53 == newWord[4] ||
        letterMemory14 == newWord[0] &&
            letterMemory24 == newWord[1] &&
            letterMemory34 == newWord[2] &&
            letterMemory44 == newWord[3] &&
            letterMemory54 == newWord[4] ||
        letterMemory15 == newWord[0] &&
            letterMemory25 == newWord[1] &&
            letterMemory35 == newWord[2] &&
            letterMemory45 == newWord[3] &&
            letterMemory55 == newWord[4] ||
        letterMemory16 == newWord[0] &&
            letterMemory26 == newWord[1] &&
            letterMemory36 == newWord[2] &&
            letterMemory46 == newWord[3] &&
            letterMemory56 == newWord[4] ||
        letterMemory56 != "") {
      return true;
    } else {
      return false;
    }
  }

  void winningRoutine() {
    if (finishCheck() == true) {
      letterMemory11 = '';
      letterMemory21 = '';
      letterMemory31 = '';
      letterMemory41 = '';
      letterMemory51 = '';

      letterMemory12 = '';
      letterMemory22 = '';
      letterMemory32 = '';
      letterMemory42 = '';
      letterMemory52 = '';

      letterMemory13 = '';
      letterMemory23 = '';
      letterMemory33 = '';
      letterMemory43 = '';
      letterMemory53 = '';

      letterMemory14 = '';
      letterMemory24 = '';
      letterMemory34 = '';
      letterMemory44 = '';
      letterMemory54 = '';

      letterMemory15 = '';
      letterMemory25 = '';
      letterMemory35 = '';
      letterMemory45 = '';
      letterMemory55 = '';

      letterMemory16 = '';
      letterMemory26 = '';
      letterMemory36 = '';
      letterMemory46 = '';
      letterMemory56 = '';

      counter = 0;
      color11 = Colors.white;
      color21 = Colors.white;
      color31 = Colors.white;
      color41 = Colors.white;
      color51 = Colors.white;

      color12 = Colors.white;
      color22 = Colors.white;
      color32 = Colors.white;
      color42 = Colors.white;
      color52 = Colors.white;

      color13 = Colors.white;
      color23 = Colors.white;
      color33 = Colors.white;
      color43 = Colors.white;
      color53 = Colors.white;

      color14 = Colors.white;
      color24 = Colors.white;
      color34 = Colors.white;
      color44 = Colors.white;
      color54 = Colors.white;

      color15 = Colors.white;
      color25 = Colors.white;
      color35 = Colors.white;
      color45 = Colors.white;
      color55 = Colors.white;

      color16 = Colors.white;
      color26 = Colors.white;
      color36 = Colors.white;
      color46 = Colors.white;
      color56 = Colors.white;
      ramdomWord();
    } else {}
  }

  void ramdomWord() {
    if (counter == 0) {
      wordnumber = Random().nextInt(8);
      newWord = wordsListList[wordnumber];

      print(newWord);
      notifyListeners();
    } else {}
  }

  void colorChanger1() {
    if (letterMemory11 == newWord[0]) {
      color11 = Color(0xFF6aaa64);

      notifyListeners();
    } else if (letterMemory11 == newWord[1] ||
        letterMemory11 == newWord[2] ||
        letterMemory11 == newWord[3] ||
        letterMemory11 == newWord[4]) {
      color11 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color11 = Colors.grey;
      notifyListeners();
    }
    if (letterMemory21 == newWord[1]) {
      color21 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory21 == newWord[0] ||
        letterMemory21 == newWord[2] ||
        letterMemory21 == newWord[3] ||
        letterMemory21 == newWord[4]) {
      color21 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color21 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory31 == newWord[2]) {
      color31 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory31 == newWord[1] ||
        letterMemory31 == newWord[0] ||
        letterMemory31 == newWord[3] ||
        letterMemory31 == newWord[4]) {
      color31 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color31 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory41 == newWord[3]) {
      color41 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory41 == newWord[1] ||
        letterMemory41 == newWord[2] ||
        letterMemory41 == newWord[0] ||
        letterMemory41 == newWord[4]) {
      color41 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color41 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory51 == newWord[4]) {
      color51 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory51 == newWord[1] ||
        letterMemory51 == newWord[2] ||
        letterMemory51 == newWord[3] ||
        letterMemory51 == newWord[0]) {
      color51 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color51 = Colors.grey;
      notifyListeners();
    }
  }

  void colorChanger2() {
    if (letterMemory12 == newWord[0]) {
      color12 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory12 == newWord[1] ||
        letterMemory12 == newWord[2] ||
        letterMemory12 == newWord[3] ||
        letterMemory12 == newWord[4]) {
      color12 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color12 = Colors.grey;
      notifyListeners();
    }
    if (letterMemory22 == newWord[1]) {
      color22 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory22 == newWord[0] ||
        letterMemory22 == newWord[2] ||
        letterMemory22 == newWord[3] ||
        letterMemory22 == newWord[4]) {
      color22 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color22 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory32 == newWord[2]) {
      color32 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory32 == newWord[1] ||
        letterMemory32 == newWord[0] ||
        letterMemory32 == newWord[3] ||
        letterMemory32 == newWord[4]) {
      color32 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color32 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory42 == newWord[3]) {
      color42 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory42 == newWord[1] ||
        letterMemory42 == newWord[2] ||
        letterMemory42 == newWord[0] ||
        letterMemory42 == newWord[4]) {
      color42 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color42 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory52 == newWord[4]) {
      color52 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory52 == newWord[1] ||
        letterMemory52 == newWord[2] ||
        letterMemory52 == newWord[3] ||
        letterMemory52 == newWord[0]) {
      color52 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color52 = Colors.grey;
      notifyListeners();
    }
  }

  void colorChanger3() {
    if (letterMemory13 == newWord[0]) {
      color13 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory13 == newWord[1] ||
        letterMemory13 == newWord[2] ||
        letterMemory13 == newWord[3] ||
        letterMemory13 == newWord[4]) {
      color13 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color13 = Colors.grey;
      notifyListeners();
    }
    if (letterMemory23 == newWord[1]) {
      color23 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory23 == newWord[0] ||
        letterMemory23 == newWord[2] ||
        letterMemory23 == newWord[3] ||
        letterMemory23 == newWord[4]) {
      color23 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color23 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory33 == newWord[2]) {
      color33 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory33 == newWord[1] ||
        letterMemory33 == newWord[0] ||
        letterMemory33 == newWord[3] ||
        letterMemory33 == newWord[4]) {
      color33 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color33 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory43 == newWord[3]) {
      color43 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory43 == newWord[1] ||
        letterMemory43 == newWord[2] ||
        letterMemory43 == newWord[0] ||
        letterMemory43 == newWord[4]) {
      color43 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color43 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory53 == newWord[4]) {
      color53 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory53 == newWord[1] ||
        letterMemory53 == newWord[2] ||
        letterMemory53 == newWord[3] ||
        letterMemory53 == newWord[0]) {
      color53 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color53 = Colors.grey;
      notifyListeners();
    }
  }

  void colorChanger4() {
    if (letterMemory14 == newWord[0]) {
      color14 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory14 == newWord[1] ||
        letterMemory14 == newWord[2] ||
        letterMemory14 == newWord[3] ||
        letterMemory14 == newWord[4]) {
      color14 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color14 = Colors.grey;
      notifyListeners();
    }
    if (letterMemory24 == newWord[1]) {
      color24 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory24 == newWord[0] ||
        letterMemory24 == newWord[2] ||
        letterMemory24 == newWord[3] ||
        letterMemory24 == newWord[4]) {
      color24 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color24 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory34 == newWord[2]) {
      color34 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory34 == newWord[1] ||
        letterMemory34 == newWord[0] ||
        letterMemory34 == newWord[3] ||
        letterMemory34 == newWord[4]) {
      color34 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color34 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory44 == newWord[3]) {
      color44 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory44 == newWord[1] ||
        letterMemory44 == newWord[2] ||
        letterMemory44 == newWord[0] ||
        letterMemory44 == newWord[4]) {
      color44 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color44 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory54 == newWord[4]) {
      color54 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory54 == newWord[1] ||
        letterMemory54 == newWord[2] ||
        letterMemory54 == newWord[3] ||
        letterMemory54 == newWord[0]) {
      color54 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color54 = Colors.grey;
      notifyListeners();
    }
  }

  void colorChanger5() {
    if (letterMemory15 == newWord[0]) {
      color15 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory15 == newWord[1] ||
        letterMemory15 == newWord[2] ||
        letterMemory15 == newWord[3] ||
        letterMemory15 == newWord[4]) {
      color15 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color15 = Colors.grey;
      notifyListeners();
    }
    if (letterMemory25 == newWord[1]) {
      color25 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory25 == newWord[0] ||
        letterMemory25 == newWord[2] ||
        letterMemory25 == newWord[3] ||
        letterMemory25 == newWord[4]) {
      color25 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color25 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory35 == newWord[2]) {
      color35 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory35 == newWord[1] ||
        letterMemory35 == newWord[0] ||
        letterMemory35 == newWord[3] ||
        letterMemory35 == newWord[4]) {
      color35 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color35 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory45 == newWord[3]) {
      color45 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory45 == newWord[1] ||
        letterMemory45 == newWord[2] ||
        letterMemory45 == newWord[0] ||
        letterMemory45 == newWord[4]) {
      color45 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color45 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory55 == newWord[4]) {
      color55 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory55 == newWord[1] ||
        letterMemory55 == newWord[2] ||
        letterMemory55 == newWord[3] ||
        letterMemory55 == newWord[0]) {
      color55 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color55 = Colors.grey;
      notifyListeners();
    }
  }

  void colorChanger6() {
    if (letterMemory16 == newWord[0]) {
      color16 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory16 == newWord[1] ||
        letterMemory16 == newWord[2] ||
        letterMemory16 == newWord[3] ||
        letterMemory16 == newWord[4]) {
      color16 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color16 = Colors.grey;
      notifyListeners();
    }
    if (letterMemory26 == newWord[1]) {
      color26 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory26 == newWord[0] ||
        letterMemory26 == newWord[2] ||
        letterMemory26 == newWord[3] ||
        letterMemory26 == newWord[4]) {
      color26 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color26 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory36 == newWord[2]) {
      color36 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory36 == newWord[1] ||
        letterMemory36 == newWord[0] ||
        letterMemory36 == newWord[3] ||
        letterMemory36 == newWord[4]) {
      color36 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color36 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory46 == newWord[3]) {
      color46 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory43 == newWord[1] ||
        letterMemory46 == newWord[2] ||
        letterMemory46 == newWord[0] ||
        letterMemory46 == newWord[4]) {
      color46 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color46 = Colors.grey;
      notifyListeners();
    }

    if (letterMemory56 == newWord[4]) {
      color56 = Color(0xFF6aaa64);
      notifyListeners();
    } else if (letterMemory56 == newWord[1] ||
        letterMemory56 == newWord[2] ||
        letterMemory56 == newWord[3] ||
        letterMemory56 == newWord[0]) {
      color56 = Color(0xFFc9b458);
      notifyListeners();
    } else {
      color56 = Colors.grey;
      notifyListeners();
    }
  }
}
