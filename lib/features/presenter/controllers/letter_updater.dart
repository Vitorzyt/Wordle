import 'package:flutter/material.dart';
import 'package:wordle/features/presenter/widgets/wordle_container.dart';

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
      print('$word');

      savingword();
      counter++;
      print('$counter');
      print('$letterMemory11');
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
}
