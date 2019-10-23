import 'package:flutter/material.dart';
import 'package:flutter_foodybite/screens/sent1.dart';

void main() => runApp(new form1());

class form1 extends StatefulWidget {
  @override
  _form1State createState() => _form1State();
}

class _form1State extends State<form1> {
  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String NT, email, Building;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Ergonomic Evaluation'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _key,
              autovalidate: _validate,
              child: _formUI(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _formUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: new InputDecoration(hintText: 'NT'),
          maxLength: 40,

          onSaved: (String val) {
            NT = val;
          },
        ),
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Badge'),
          maxLength: 40,

          onSaved: (String val) {
            NT = val;
          },
        ),
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Site (Business Unit)'),
          maxLength: 40,

          onSaved: (String val) {
            NT = val;
          },
        ),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Building'),

            maxLength: 10,

            onSaved: (String val) {
              Building = val;
            }),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Sector'),

            maxLength: 40,

            onSaved: (String val) {
              email = val;
            }),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Cube'),

            maxLength: 40,

            onSaved: (String val) {
              email = val;
            }),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Comments'),

            maxLength: 40,

            onSaved: (String val) {
              email = val;
            }),
        new SizedBox(height: 15.0),

        new RaisedButton(
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context){
                  return sent1();
                },
              ),
            );
          },
          //child: new Text('Enviar'),
          padding: const EdgeInsets.all(10.0),
          child: const Text(
              'Send',
              style: TextStyle(fontSize: 20)
          ),

        )

      ],
    );
  }




}