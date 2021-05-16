import 'package:flutter/material.dart';
import './ModelWidget.dart';
import './CustomSwitch.dart';

class Dashbord extends StatefulWidget {
  @override
  _DashbordState createState() => _DashbordState();
}

class _DashbordState extends State<Dashbord> {
  Map<String, bool> state = {
    'tshirt': false,
    'bottomwear': false,
    'jacket': false,
    'shoes': false,
  };

  void onChange(toggleField, toggleValue) {
    setState(() => state[toggleField] = toggleValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Container(
          color: Colors.deepPurple[600],
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: ModelWidget(state),
              ),
              Expanded(
                flex: 6,
                child: Container(
                    margin: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 6,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        CustomSwitch(
                          onChange: onChange,
                          toggleField: 'tshirt',
                          toggleValue: state['tshirt']!,
                          toggleText: 'T-Shirt',
                        ),
                        CustomSwitch(
                          onChange: onChange,
                          toggleField: 'jacket',
                          toggleValue: state['jacket']!,
                          toggleText: 'Jacket',
                        ),
                        CustomSwitch(
                          onChange: onChange,
                          toggleField: 'bottomwear',
                          toggleValue: state['bottomwear']!,
                          toggleText: "Bottom Wear",
                        ),
                        CustomSwitch(
                          onChange: onChange,
                          toggleField: 'shoes',
                          toggleValue: state['shoes']!,
                          toggleText: "Shoes",
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
