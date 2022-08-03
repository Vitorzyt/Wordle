import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../controllers/letter_updater.dart';

class FinishingDialog extends StatelessWidget {
  const FinishingDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "End of Game",
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.black,
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              context.read<letterUpdater>().winningRoutine();
              Navigator.of(context).pop();
            },
            child: Text(
              "Restart",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.blue,
              ),
            ))
      ],
      elevation: 24.0,
      backgroundColor: Colors.white,
    );
  }
}
