import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wordle/features/presenter/controllers/letter_updater.dart';

class wordle_container extends StatelessWidget {
  int rowActivator = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 194, 194, 194),
            )),
        child: Center(
          child: rowActivator == Provider.of<letterUpdater>(context).counter
              ? Text(
                  Provider.of<letterUpdater>(context).newFirstLetter,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                  ),
                )
              : Text(''),
        ),
      ),
    );
  }
}

class wordle_container1 extends StatelessWidget {
  wordle_container1(this.rowActivator);
//todo criar uma memoria para cada row, todo enter salvar as letter na memoria e ir pra proxima tudo focado no counter
  final int rowActivator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: rowActivator == (0)
                ? Provider.of<letterUpdater>(context).color11
                : rowActivator == (1)
                    ? Provider.of<letterUpdater>(context).color12
                    : rowActivator == (2)
                        ? Provider.of<letterUpdater>(context).color13
                        : rowActivator == (3)
                            ? Provider.of<letterUpdater>(context).color14
                            : rowActivator == (4)
                                ? Provider.of<letterUpdater>(context).color15
                                : rowActivator == (5)
                                    ? Provider.of<letterUpdater>(context)
                                        .color16
                                    : Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 194, 194, 194),
            )),
        child: Center(
          child: rowActivator == Provider.of<letterUpdater>(context).counter
              ? Text(
                  Provider.of<letterUpdater>(context).newFirstLetter,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                  ),
                )
              : rowActivator == (0)
                  ? Text(
                      Provider.of<letterUpdater>(context).letterMemory11,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    )
                  : rowActivator == (1)
                      ? Text(
                          Provider.of<letterUpdater>(context).letterMemory12,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                          ),
                        )
                      : rowActivator == (2)
                          ? Text(
                              Provider.of<letterUpdater>(context)
                                  .letterMemory13,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.black,
                              ),
                            )
                          : rowActivator == (3)
                              ? Text(
                                  Provider.of<letterUpdater>(context)
                                      .letterMemory14,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.black,
                                  ),
                                )
                              : rowActivator == (4)
                                  ? Text(
                                      Provider.of<letterUpdater>(context)
                                          .letterMemory15,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    )
                                  : rowActivator == (5)
                                      ? Text(
                                          Provider.of<letterUpdater>(context)
                                              .letterMemory16,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 40.0,
                                            color: Colors.black,
                                          ),
                                        )
                                      : Text(''),
        ),
      ),
    );
  }
}

class wordle_container2 extends StatelessWidget {
  wordle_container2(this.rowActivator);

  final int rowActivator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: rowActivator == (0)
                ? Provider.of<letterUpdater>(context).color21
                : rowActivator == (1)
                    ? Provider.of<letterUpdater>(context).color22
                    : rowActivator == (2)
                        ? Provider.of<letterUpdater>(context).color23
                        : rowActivator == (3)
                            ? Provider.of<letterUpdater>(context).color24
                            : rowActivator == (4)
                                ? Provider.of<letterUpdater>(context).color25
                                : rowActivator == (5)
                                    ? Provider.of<letterUpdater>(context)
                                        .color26
                                    : Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 194, 194, 194),
            )),
        child: Center(
          child: rowActivator == Provider.of<letterUpdater>(context).counter
              ? Text(
                  Provider.of<letterUpdater>(context).newSecondLetter,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                  ),
                )
              : rowActivator == (0)
                  ? Text(
                      Provider.of<letterUpdater>(context).letterMemory21,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    )
                  : rowActivator == (1)
                      ? Text(
                          Provider.of<letterUpdater>(context).letterMemory22,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                          ),
                        )
                      : rowActivator == (2)
                          ? Text(
                              Provider.of<letterUpdater>(context)
                                  .letterMemory23,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.black,
                              ),
                            )
                          : rowActivator == (3)
                              ? Text(
                                  Provider.of<letterUpdater>(context)
                                      .letterMemory24,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.black,
                                  ),
                                )
                              : rowActivator == (4)
                                  ? Text(
                                      Provider.of<letterUpdater>(context)
                                          .letterMemory25,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    )
                                  : rowActivator == (5)
                                      ? Text(
                                          Provider.of<letterUpdater>(context)
                                              .letterMemory26,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 40.0,
                                            color: Colors.black,
                                          ),
                                        )
                                      : Text(''),
        ),
      ),
    );
  }
}

class wordle_container3 extends StatelessWidget {
  wordle_container3(this.rowActivator);

  final int rowActivator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: rowActivator == (0)
                ? Provider.of<letterUpdater>(context).color31
                : rowActivator == (1)
                    ? Provider.of<letterUpdater>(context).color32
                    : rowActivator == (2)
                        ? Provider.of<letterUpdater>(context).color33
                        : rowActivator == (3)
                            ? Provider.of<letterUpdater>(context).color34
                            : rowActivator == (4)
                                ? Provider.of<letterUpdater>(context).color35
                                : rowActivator == (5)
                                    ? Provider.of<letterUpdater>(context)
                                        .color36
                                    : Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 194, 194, 194),
            )),
        child: Center(
          child: rowActivator == Provider.of<letterUpdater>(context).counter
              ? Text(
                  Provider.of<letterUpdater>(context).newThirdLetter,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                  ),
                )
              : rowActivator == (0)
                  ? Text(
                      Provider.of<letterUpdater>(context).letterMemory31,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    )
                  : rowActivator == (1)
                      ? Text(
                          Provider.of<letterUpdater>(context).letterMemory32,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                          ),
                        )
                      : rowActivator == (2)
                          ? Text(
                              Provider.of<letterUpdater>(context)
                                  .letterMemory33,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.black,
                              ),
                            )
                          : rowActivator == (3)
                              ? Text(
                                  Provider.of<letterUpdater>(context)
                                      .letterMemory34,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.black,
                                  ),
                                )
                              : rowActivator == (4)
                                  ? Text(
                                      Provider.of<letterUpdater>(context)
                                          .letterMemory35,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    )
                                  : rowActivator == (5)
                                      ? Text(
                                          Provider.of<letterUpdater>(context)
                                              .letterMemory36,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 40.0,
                                            color: Colors.black,
                                          ),
                                        )
                                      : Text(''),
        ),
      ),
    );
  }
}

class wordle_container4 extends StatelessWidget {
  wordle_container4(this.rowActivator);

  final int rowActivator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: rowActivator == (0)
                ? Provider.of<letterUpdater>(context).color41
                : rowActivator == (1)
                    ? Provider.of<letterUpdater>(context).color42
                    : rowActivator == (2)
                        ? Provider.of<letterUpdater>(context).color43
                        : rowActivator == (3)
                            ? Provider.of<letterUpdater>(context).color44
                            : rowActivator == (4)
                                ? Provider.of<letterUpdater>(context).color45
                                : rowActivator == (5)
                                    ? Provider.of<letterUpdater>(context)
                                        .color26
                                    : Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 194, 194, 194),
            )),
        child: Center(
          child: rowActivator == Provider.of<letterUpdater>(context).counter
              ? Text(
                  Provider.of<letterUpdater>(context).newFourthLetter,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                  ),
                )
              : rowActivator == (0)
                  ? Text(
                      Provider.of<letterUpdater>(context).letterMemory41,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    )
                  : rowActivator == (1)
                      ? Text(
                          Provider.of<letterUpdater>(context).letterMemory42,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                          ),
                        )
                      : rowActivator == (2)
                          ? Text(
                              Provider.of<letterUpdater>(context)
                                  .letterMemory43,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.black,
                              ),
                            )
                          : rowActivator == (3)
                              ? Text(
                                  Provider.of<letterUpdater>(context)
                                      .letterMemory44,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.black,
                                  ),
                                )
                              : rowActivator == (4)
                                  ? Text(
                                      Provider.of<letterUpdater>(context)
                                          .letterMemory45,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    )
                                  : rowActivator == (5)
                                      ? Text(
                                          Provider.of<letterUpdater>(context)
                                              .letterMemory46,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 40.0,
                                            color: Colors.black,
                                          ),
                                        )
                                      : Text(''),
        ),
      ),
    );
  }
}

class wordle_container5 extends StatelessWidget {
  wordle_container5(this.rowActivator);

  final int rowActivator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            color: rowActivator == (0)
                ? Provider.of<letterUpdater>(context).color51
                : rowActivator == (1)
                    ? Provider.of<letterUpdater>(context).color52
                    : rowActivator == (2)
                        ? Provider.of<letterUpdater>(context).color53
                        : rowActivator == (3)
                            ? Provider.of<letterUpdater>(context).color54
                            : rowActivator == (4)
                                ? Provider.of<letterUpdater>(context).color55
                                : rowActivator == (5)
                                    ? Provider.of<letterUpdater>(context)
                                        .color56
                                    : Colors.white,
            border: Border.all(
              color: Color.fromARGB(255, 194, 194, 194),
            )),
        child: Center(
          child: rowActivator == Provider.of<letterUpdater>(context).counter
              ? Text(
                  Provider.of<letterUpdater>(context).newFifthLetter,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                  ),
                )
              : rowActivator == (0)
                  ? Text(
                      Provider.of<letterUpdater>(context).letterMemory51,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black,
                      ),
                    )
                  : rowActivator == (1)
                      ? Text(
                          Provider.of<letterUpdater>(context).letterMemory52,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 40.0,
                            color: Colors.black,
                          ),
                        )
                      : rowActivator == (2)
                          ? Text(
                              Provider.of<letterUpdater>(context)
                                  .letterMemory53,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 40.0,
                                color: Colors.black,
                              ),
                            )
                          : rowActivator == (3)
                              ? Text(
                                  Provider.of<letterUpdater>(context)
                                      .letterMemory54,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 40.0,
                                    color: Colors.black,
                                  ),
                                )
                              : rowActivator == (4)
                                  ? Text(
                                      Provider.of<letterUpdater>(context)
                                          .letterMemory55,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 40.0,
                                        color: Colors.black,
                                      ),
                                    )
                                  : rowActivator == (5)
                                      ? Text(
                                          Provider.of<letterUpdater>(context)
                                              .letterMemory56,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 40.0,
                                            color: Colors.black,
                                          ),
                                        )
                                      : Text(''),
        ),
      ),
    );
  }
}
