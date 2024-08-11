import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: const AskMeAnything(),
      ),
    ),
  );
}

class AskMeAnything extends StatefulWidget {
  const AskMeAnything({super.key});

  @override
  State<AskMeAnything> createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int imageNum = 1;

  void randomAnswer(){
    setState(() {
      imageNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: TextButton(onPressed: () {
                randomAnswer();
              },
              child: Image.asset('images/ball$imageNum.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
