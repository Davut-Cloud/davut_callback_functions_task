// main_screen.dart

import 'package:callback_functions/input_counter_box.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("5.1.6 Callback functions"),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              InputCounterBox(
                color: Colors.lime,
                onLengthChanged: () {
                  debugPrint("Box 1 wurde verändert");
                },
              ),
              InputCounterBox(
                color: Colors.cyan,
                onLengthChanged: () {
                  debugPrint("Box 2 wurde verändert");
                },
              ),
              InputCounterBox(
                color: Colors.purpleAccent,
                onLengthChanged: () {
                  debugPrint("Box 3 wurde verändert");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
