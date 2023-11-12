import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You a nswerd X out of Y questions Correctly!.'),
            const SizedBox(
              height: 30,
            ),
            const Text('List of answer and Questions...'),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}
