import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 15),
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: (data['user_answer'] == data['correct_answer'])
                          ? Colors.green
                          : Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['quesiton'] as String,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(height: 5),
                        (data['user_answer'] != data['correct_answer'])
                            ? Column(
                                children: [
                                  Text(
                                    data['user_answer'] as String,
                                    style: const TextStyle(color: Colors.amber),
                                  ),
                                  const SizedBox(height: 5),
                                ],
                              )
                            : const SizedBox(height: 0),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(color: Colors.green),
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
