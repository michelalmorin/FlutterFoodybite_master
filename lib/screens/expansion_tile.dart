import 'package:flutter/material.dart';
import 'package:flutter_foodybite/util/requests.dart';
import 'form1.dart';


void main() => runApp(new MaterialApp(home: new expansion_tile(), debugShowCheckedModeBanner: false,),);

class expansion_tile extends StatefulWidget {
  @override
  _expansion_tileState createState() => new _expansion_tileState();
}

class _expansion_tileState extends State<expansion_tile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemCount: Requests.length,
        itemBuilder: (context, i) {
          return new ExpansionTile(
            title: new Text(Requests[i].title, style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
            children: <Widget>[
              new Column(
                children: _buildExpandableContent(Requests[i]),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildExpandableContent(Request Request) {
    List<Widget> columnContent = [];

    for (String content in Request.contents)
      columnContent.add(
        new ListTile(
          title: FlatButton(
            child: new Text(content, style: new TextStyle(fontSize: 18.0),),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context){
                    return form1() ;
                  },
                ),
              );
            },
          ),
          leading: new Icon(Request.icon),

        ),
      );

    return columnContent;
  }
}

class Request {
  final String title;
  List<String> contents = [];
  final IconData icon;


  Request({this.title, this.contents, this.icon});
}

List<Request> Requests = [
  new Request( title:'Facilities',
    contents: ['Ergonomic Evaluation','Building Maintenance', 'Carpet/Flooring Issue', 'Furniture Issue'],
    icon: Icons.settings,
  ),
  new Request( title:'Tech Central',
contents: ['Laptop','Desktop', 'Re-image', 'Dock Station'],
    icon: Icons.phonelink,
  ),
  new Request( title:'Service Now',
    contents: ['Database Access','RSA Token', 'PAC group'],
    icon: Icons.power_settings_new,
  ),
];