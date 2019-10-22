import 'package:flutter/material.dart';


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
          title: new Text(content, style: new TextStyle(fontSize: 18.0),),
          leading: new Text (content, style: new TextStyle(fontSize: 18.0),
        ),
      ),);

    return columnContent;
  }
}

class Request {
  final String title;
  List<String> contents = [];
  List<IconData> icon = [];


  Request({this.title, this.contents, this.icon});
}

List<Request> Requests = [
  new Request( title:'Facilities',
    contents: ['Bathroom/Toilet Issue','Building Maintenance', 'Carpet/Flooring Issue', 'Furniture Issue'],
    icon: [Icons.wc, Icons.accessible, Icons.favorite, Icons.lens],
  ),
  new Request( title:'Tech Central',
contents: ['Bathroom/Toilet Issue','Building Maintenance', 'Carpet/Flooring Issue', 'Furniture Issue'],
icon: [Icons.wc, Icons.accessible],
  ),
  new Request( title:'Service Now',
    contents: ['Bathroom/Toilet Issue','Building Maintenance', 'Carpet/Flooring Issue', 'Furniture Issue'],
    icon: [Icons.wc, Icons.accessible],
  ),
];