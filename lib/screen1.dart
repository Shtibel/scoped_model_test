import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './scoped_model/scoped_display_screen.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterModel>(
      builder: (context, child, model) => Center(
        child: RaisedButton(
          onPressed: () {
            model.increment();
            print("counter ${model.counter}");
          },
          color: Colors.red,
          child: Text('button ${model.counter}'),
        ),
      ),
    );
  }
}
