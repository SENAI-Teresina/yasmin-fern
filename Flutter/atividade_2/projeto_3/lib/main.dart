import 'package:flutter/material.dart';

void main() {
  runApp(PreferencesForm());
}

class PreferencesForm extends StatefulWidget {
  @override
  _PreferencesFormState createState() => _PreferencesFormState();
}

class _PreferencesFormState extends State<PreferencesForm> {
  bool _option1 = false;
  bool _option2 = false;
  bool _option3 = false;

  void _updateOptions() {
    setState(() {
      // Atualiza as preferências selecionadas
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formulário de Preferências'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selecione suas preferências:',
                style: TextStyle(fontSize: 20.0),
              ),
              CheckboxListTile(
                title: Text('Opção 1'),
                value: _option1,
                onChanged: (value) {
                  setState(() {
                    _option1 = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Opção 2'),
                value: _option2,
                onChanged: (value) {
                  setState(() {
                    _option2 = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Opção 3'),
                value: _option3,
                onChanged: (value) {
                  setState(() {
                    _option3 = value!;
                  });
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  _updateOptions();
                  String message = 'Preferências selecionadas:\n';
                  if (_option1) {
                    message += ' - Opção 1\n';
                  }
                  if (_option2) {
                    message += ' - Opção 2\n';
                  }
                  if (_option3) {
                    message += ' - Opção 3\n';
                  }
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Preferências'),
                        content: Text(message),
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
                },
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
