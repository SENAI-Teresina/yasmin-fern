import 'package:flutter/material.dart';

void main() {
  runApp(MultipleChoiceQuiz());
}

class MultipleChoiceQuiz extends StatefulWidget {
  @override
  _MultipleChoiceQuizState createState() => _MultipleChoiceQuizState();
}

class _MultipleChoiceQuizState extends State<MultipleChoiceQuiz> {
  int _selectedOption1 = -1;
  int _selectedOption2 = -1;
  int _selectedOption3 = -1;
  
  void _showResult() {
    int score = 0;
    if (_selectedOption1 == 1) {
      score++;
    }
    if (_selectedOption2 == 2) {
      score++;
    }
    if (_selectedOption3 == 3) {
      score++;
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Resultado do Questionário'),
          content: Text('Pontuação: $score / 3'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Fechar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Questionário de Múltipla Escolha'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0),
              Text(
                'Pergunta 1:',
                style: TextStyle(fontSize: 18.0),
              ),
              RadioListTile(
                title: Text('Resposta 1'),
                value: 1,
                groupValue: _selectedOption1,
                onChanged: (value) {
                  setState(() {
                    _selectedOption1 = value!;
                  });
                },
              ),
              RadioListTile(
                title: Text('Resposta 2'),
                value: 2,
                groupValue: _selectedOption1,
                onChanged: (value) {
                  setState(() {
                    _selectedOption1 = value!;
                  });
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'Pergunta 2:',
                style: TextStyle(fontSize: 18.0),
              ),
              RadioListTile(
                title: Text('Resposta 1'),
                value: 1,
                groupValue: _selectedOption2,
                onChanged: (value) {
                  setState(() {
                    _selectedOption2 = value!;
                  });
                },
              ),
              RadioListTile(
                title: Text('Resposta 2'),
                value: 2,
                groupValue: _selectedOption2,
                onChanged: (value) {
                  setState(() {
                    _selectedOption2 = value!;
                  });
                },
              ),
              SizedBox(height: 20.0),
              Text(
                'Pergunta 3:',
                style: TextStyle(fontSize: 18.0),
              ),
              RadioListTile(
                title: Text('Resposta 1'),
                value: 1,
                groupValue: _selectedOption3,
                onChanged: (value) {
                  setState(() {
                    _selectedOption3 = value!;
                  });
                },
              ),
              RadioListTile(
                title: Text('Resposta 2'),
                value: 2,
                groupValue: _selectedOption3,
                onChanged: (value) {
                  setState(() {
                    _selectedOption3 = value!;
                  });
                },
              ),
              SizedBox(height: 20.0),
              Center(
                child: ElevatedButton(
                  onPressed: _showResult,
                  child: Text('Ver Resultado'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
