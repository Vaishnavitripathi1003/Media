import 'package:flutter/material.dart';

class MultipleChoiceQuestions extends StatefulWidget {
  const MultipleChoiceQuestions({Key? key}) : super(key: key);

  @override
  _MultipleChoiceQuestionsState createState() =>
      _MultipleChoiceQuestionsState();
}

class _MultipleChoiceQuestionsState extends State<MultipleChoiceQuestions> {
  Map<String, String> groupValues = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiple Choice Questions"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            _buildQuestion("Can Chennai Super Kings win IPL 2023?", "Q1"),
            _buildQuestion("Is Flutter a framework by Google?", "Q2"),
            _buildQuestion("Are you enjoying coding?", "Q3"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _handleSubmit();
              },
              child: const Text(
                "Submit",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuestion(String question, String key) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Row(
            children: [
              Radio<String>(
                value: "Yes",
                groupValue: groupValues[key],
                onChanged: (value) {
                  setState(() {
                    groupValues[key] = value!;
                  });
                },
              ),
              const Text(
                "Yes",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 20),
              Radio<String>(
                value: "No",
                groupValue: groupValues[key],
                onChanged: (value) {
                  setState(() {
                    groupValues[key] = value!;
                  });
                },
              ),
              const Text(
                "No",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _handleSubmit() {
    // Display the selected values
    groupValues.forEach((key, value) {
      print("Question $key: $value");
    });
  }
}


