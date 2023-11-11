import 'package:flutter/widgets.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const Text('QuestionScreen');
  }
}
