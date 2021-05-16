import 'package:flutter/material.dart';

class ModelWidget extends StatelessWidget {
  final Map<String, bool> _state;

  ModelWidget(this._state);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset('images/skelatonwhole.png'),
          if (_state['bottomwear'] ?? false)
            Image.asset('images/bottomwear2.png'),
          if (_state['tshirt'] ?? false) Image.asset('images/top.png'),
          if (_state['jacket'] ?? false) Image.asset('images/jacket.png'),
          if (_state['shoes'] ?? false) Image.asset('images/Shoes.png'),
        ],
      ),
    );
  }
}
