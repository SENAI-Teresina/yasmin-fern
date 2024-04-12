import 'package:flutter/material.dart';

void main() {
  runApp(LanguageSettings());
}

class LanguageSettings extends StatefulWidget {
  @override
  _LanguageSettingsState createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  String _selectedLanguage = 'Português'; // Idioma padrão

  void _changeLanguage(String newLanguage) {
    setState(() {
      _selectedLanguage = newLanguage;
    });

    // Aqui você pode implementar a lógica para alterar o idioma do aplicativo
    // para o novo idioma selecionado
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Configurações de Idioma',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Configurações de Idioma'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Selecione o idioma:',
                  style: TextStyle(fontSize: 18.0),
                ),
                SizedBox(height: 10.0),
                DropdownButton<String>(
                  value: _selectedLanguage,
                  onChanged: (newValue) => _changeLanguage(newValue!),
                  items: <String>['Português', 'Inglês', 'Espanhol', 'Francês']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
