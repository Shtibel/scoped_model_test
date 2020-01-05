import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './scoped_model/scoped_display_screen.dart';

import './screen1.dart';
import './screen2.dart';
import './screen3.dart';

import './scoped_model/scoped_display_screen.dart';

void main() => runApp(MyApp());

CounterModel counterModel = CounterModel();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<CounterModel>(
      model: counterModel,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('scoped model'),
          ),
          body: counterModel.counter == 1
              ? Screen1()
              : counterModel.counter == 2 ? Screen2() : Screen3(),
        ),
      ),
    );
  }
}
