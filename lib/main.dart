import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/presenter/controllers/letter_updater.dart';
import 'features/presenter/pages/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<letterUpdater>(
      create: (_) => letterUpdater(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
            primaryColor: Color.fromARGB(255, 54, 118, 202),
            scaffoldBackgroundColor: Color(0xFFfcfefc)),
        home: MainScreen(),
      ),
    );
  }
}
