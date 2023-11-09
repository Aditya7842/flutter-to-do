import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'ToDo.dart';
import 'AnotherPage.dart';

class LiftingState extends StatefulWidget {
  LiftingState(this.changeScreen, {super.key});

  void Function() changeScreen;
  final changeState = 'to-do';

  @override
  State<LiftingState> createState() => _LiftingStateState();
}

class _LiftingStateState extends State<LiftingState> {
  @override
  Widget build(BuildContext context) {
    return ToDo();
  }
}
