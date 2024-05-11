import 'package:flutter/material.dart';

void main() {
  runApp(Radioss());
}

class Radioss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuestionPage(),
    );
  }
}

class QuestionPage extends StatelessWidget {
  final List<Map<String, dynamic>> questions = [
    {
      'questionId': 1,
      'question': 'What is the capital of France?',
      'options': [
        {'optionId': 1, 'text': 'Paris'},
        {'optionId': 2, 'text': 'London'},
        {'optionId': 3, 'text': 'Berlin'},
        {'optionId': 4, 'text': 'Madrid'},
      ],
    },
    {
      'questionId': 2,
      'question': 'Which planet is known as the Red Planet?',
      'options': [
        {'optionId': 5, 'text': 'Mars'},
        {'optionId': 6, 'text': 'Jupiter'},
        {'optionId': 7, 'text': 'Venus'},
        {'optionId': 8, 'text': 'Mercury'},
      ],
    },
    {
      'questionId': 3,
      'question': 'Who painted the Mona Lisa?',
      'options': [
        {'optionId': 9, 'text': 'Leonardo da Vinci'},
        {'optionId': 10, 'text': 'Vincent van Gogh'},
        {'optionId': 11, 'text': 'Pablo Picasso'},
        {'optionId': 12, 'text': 'Claude Monet'},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return QuestionWidget(question: questions[index]);
        },
      ),
    );
  }
}

class QuestionWidget extends StatefulWidget {
  final Map<String, dynamic> question;

  const QuestionWidget({Key? key, required this.question}) : super(key: key);

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  int? selectedOptionId;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.question['question'],
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.question['options'].map<Widget>((option) {
                return RadioListTile<int>(
                  title: Text(option['text']),
                  value: option['optionId'],
                  groupValue: selectedOptionId,
                  onChanged: (value) {
                    setState(() {
                      selectedOptionId = value;
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
