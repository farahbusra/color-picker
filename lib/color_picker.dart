
import 'package:flutter/material.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({Key? key}) : super(key: key);

  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  int _colorRed = 0;
  int _colorGreen = 0;
  int _colorBlue = 0;

  void showAlertDialog(BuildContext context) {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) =>
          AlertDialog(
            content: Row(
              children: [const Text(
                  'You have picked '),
                CircleAvatar(radius: 10, backgroundColor: Color.fromRGBO(_colorRed, _colorGreen, _colorBlue, 1),)
              ],
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () => Navigator.pop(
                    context, 'OK'),
              ),
            ],

          ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pick your colour'), centerTitle: true),
        body: Column(
          children: [
            Slider(
              value: _colorRed.toDouble(),
              min: 0,
              max: 255,
              label: _colorRed.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _colorRed = value.toInt();
                });
              },
            ),
            Slider(
              value: _colorGreen.toDouble(),
              min: 0,
              max: 255,
              label: _colorGreen.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _colorGreen = value.toInt();
                });
              },
            ),
            Slider(
              value: _colorBlue.toDouble(),
              min: 0,
              max: 255,
              label: _colorBlue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _colorBlue = value.toInt();
                });
              },
            ),

            Container(
              margin: EdgeInsets.only(top: 25),
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(_colorRed, _colorGreen, _colorBlue, 1),
                  shape: BoxShape.circle
              ),
            ),

            Container(
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                child: Text(
                  'Select this colour', style: TextStyle(fontSize: 20.0),),
                onPressed: () {
                    Navigator.pop(context, true);
                    showAlertDialog(context); }
              ),
            ),
          ],
        ),
    );
  }
}
