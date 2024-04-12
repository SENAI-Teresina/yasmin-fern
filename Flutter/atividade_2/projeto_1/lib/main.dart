import 'package:flutter/material.dart';

void main() {
  runApp(SettingsScreen());
}

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Configurações'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mudo',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Switch(
                value: _switchValue,
                onChanged: (newValue) {
                  setState(() {
                    _switchValue = newValue;
                  });
                },
              ),
              SizedBox(height: 20.0),
              Text(
                _switchValue ? 'Ativado' : 'Desativado',
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
