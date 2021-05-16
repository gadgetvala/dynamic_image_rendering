import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatefulWidget {
  final String toggleText;
  final String toggleField;
  final bool toggleValue;
  final Function onChange;

  CustomSwitch({
    required this.toggleValue,
    required this.toggleField,
    required this.toggleText,
    required this.onChange,
  });

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.toggleText,
              style: TextStyle(
                fontSize: 25,
                color: Colors.deepPurple,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(width: 20),
            FlutterSwitch(
              activeColor: Colors.deepPurple,
              value: this.widget.toggleValue,
              onToggle: (newValue) {
                widget.onChange(widget.toggleField, newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}
