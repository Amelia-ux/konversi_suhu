import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  const Output({super.key, required double output, required String name})
      : _result = output,
        _name = name;

  final double _result;
  final String _name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(_name),
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: Expanded(
                child: Text(
                  _result.toStringAsFixed(2),
                  style: const TextStyle(fontSize: 36),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
