import 'package:flutter/material.dart';

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
          validator: _validarNT,
          onSaved: (String val) {
            NT = val;
          },
        ),
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Badge'),
          maxLength: 40,
          validator: _validarBadge,
          onSaved: (String val) {
            NT = val;
          },
        ),
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Site (Business Unit)'),
          maxLength: 40,
          validator: _validarSite,
          onSaved: (String val) {
            NT = val;
          },
        ),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Building'),
            keyboardType: TextInputType.phone,
            maxLength: 10,
            validator: _validarBuilding,
            onSaved: (String val) {
              Building = val;
            }),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Sector'),
            keyboardType: TextInputType.emailAddress,
            maxLength: 40,
            validator: _validarSector,
            onSaved: (String val) {
              email = val;
            }),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Cube'),
            keyboardType: TextInputType.emailAddress,
            maxLength: 40,
            validator: _validarCube,
            onSaved: (String val) {
              email = val;
            }),
        new SizedBox(height: 15.0),
        new RaisedButton(
          onPressed: _sendForm,
          child: new Text('Enviar'),
        )
      ],
    );
  }

  String _validarNT(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o NT";
    } else if (!regExp.hasMatch(value)) {
      return "O NT deve conter caracteres de a-z ou A-Z";
    }
    return null;
  }

  String _validarBuilding(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o Building";
    } else if(value.length != 10){
      return "O Building deve ter 10 dígitos";
    }else if (!regExp.hasMatch(value)) {
      return "O número do Building so deve conter dígitos";
    }
    return null;
  }

  String _validarSite(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o Site";
    } else if(value.length != 10){
      return "O Site deve ter 10 dígitos";
    }else if (!regExp.hasMatch(value)) {
      return "O número do Site so deve conter dígitos";
    }
    return null;
  }

  String _validarSector(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o Sector";
    } else if(value.length != 10){
      return "O Sector deve ter 10 dígitos";
    }else if (!regExp.hasMatch(value)) {
      return "O número do Sector so deve conter dígitos";
    }
    return null;
  }

  String _validarCube(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o Cube";
    } else if(value.length != 10){
      return "O Cube deve ter 10 dígitos";
    }else if (!regExp.hasMatch(value)) {
      return "O número do Cube so deve conter dígitos";
    }
    return null;
  }

  String _validarBadge(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Informe o Badge";
    }else if (!regExp.hasMatch(value)) {
      return "O número do Badge so deve conter dígitos";
    }
    return null;
  }

  _sendForm() {
    if (_key.currentState.validate()) {
      // Sem erros na validação
      _key.currentState.save();
      print("NT $NT");
      print("Building $Building");
      print("Email $email");
    } else {
      // erro de validação
      setState(() {
        _validate = true;
      });
    }
  }
}