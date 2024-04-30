import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  double _selectedFontSize = 16.0; // Default font size

  void _handleFontSizeChange(double newSize) {
    setState(() {
      _selectedFontSize = newSize;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Font Size:',
          style: TextStyle(fontSize: 16.0),
        ),
        Row(
          children: [
            Radio(
              value: 14.0,
              groupValue: _selectedFontSize,
              onChanged: (double? value) {
                _handleFontSizeChange(value ?? 16.0);
              },
            ),
            Text(
              'Small',
              style: TextStyle(fontSize: 14.0),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 16.0,
              groupValue: _selectedFontSize,
              onChanged: (double? value) {
                _handleFontSizeChange(value ?? 16.0);
              },
            ),
            Text(
              'Medium',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 18.0,
              groupValue: _selectedFontSize,
              onChanged: (double? value) {
                _handleFontSizeChange(value ?? 16.0);
              },
            ),
            Text(
              'Large',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
        SizedBox(height: 16.0),
        Text(
          'Selected Font Size: $_selectedFontSize',
          style: TextStyle(fontSize: _selectedFontSize),
        ),
      ],
    );
  }
}
