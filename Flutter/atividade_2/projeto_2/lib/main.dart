import 'package:flutter/material.dart';

void main() {
  runApp(VolumeControlScreen());
}

class VolumeControlScreen extends StatefulWidget {
  @override
  _VolumeControlScreenState createState() => _VolumeControlScreenState();
}

class _VolumeControlScreenState extends State<VolumeControlScreen> {
  double _currentVolume = 50.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Controle de Volume'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Volume: $_currentVolume',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 20.0),
              Slider(
                value: _currentVolume,
                min: 0.0,
                max: 100.0,
                divisions: 10,
                onChanged: (double value) {
                  setState(() {
                    _currentVolume = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
