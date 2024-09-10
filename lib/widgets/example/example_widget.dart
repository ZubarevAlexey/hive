import 'package:flutter/material.dart';

import 'example_widget_model.dart';
class ExampleWidget extends StatefulWidget {
  ExampleWidget({Key? key}) : super(key: key);

  @override
  _ExampleWidgetState createState() => _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  final model = ExampleWidgetModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: model.doSome,
            child: const Text('Жми меня'),
          ),
        ),
      ),
    );
  }
}