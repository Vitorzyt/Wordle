import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle/features/data/repositories/dictionary_list.dart';
import 'package:wordle/features/presenter/controllers/letter_updater.dart';

class keybord_container extends StatelessWidget {
  keybord_container(this.letter);

  final String letter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: (() {
          Provider.of<letterUpdater>(context, listen: false)
              .changeletter(letter);
        }),
        child: Container(
          height: 50,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3)),
            color: Colors.grey,
          ),
          child: Center(
            child: Text(
              '$letter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class special_keybord_container extends StatelessWidget {
  special_keybord_container(this.letter);

  final String letter;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 50,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(3)),
        ),
        child: Center(
            child: IconButton(
          icon: Icon(Icons.backspace_outlined),
          onPressed: () {
            context.read<letterUpdater>().deleteLetter(letter);
          },
        )),
      ),
    );
  }
}

class enter_keybord_container extends StatelessWidget {
  enter_keybord_container(this.letter);

  final String letter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: (() {
          if (Provider.of<letterUpdater>(context, listen: false)
                  .newFourthLetter ==
              '') {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                elevation: 300,
                backgroundColor: Colors.black,
                content: const Text(
                  'Not Enought Letters',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                duration: const Duration(seconds: 2),
              ),
            );
          } else {
            context.read<letterUpdater>().enterWord();
          }
        }),
        child: Container(
          height: 50,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(3)),
          ),
          child: Center(
            child: Text(
              '$letter',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
