import 'package:flutter/material.dart';

void main() {
  runApp(sent1());
}

class sent1 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Center(
        child: Text ('SUBMITTED!'),

      ),
      ),
    );
  }
}