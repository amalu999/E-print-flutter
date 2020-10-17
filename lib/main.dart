import 'package:eprint_homepage/menu.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Frontpage(),
    );
  }
}
class Frontpage extends StatefulWidget {
  @override
  _FrontpageState createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  Icon cusicon = Icon(Icons.search);
  Widget cussearchbar = Text('BOOKS');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20.0,
        actions : <Widget>[
          IconButton(
            onPressed: (){
              setState(() {
                if (this.cusicon.icon == Icons.search) {
                  this.cusicon = Icon(Icons.cancel);
                  this.cussearchbar = TextField(
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search books"
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  );
                }
                else{
                  this.cusicon = Icon(Icons.search);
                  this.cussearchbar = Text('BOOKS');
                }
              });
            },
            icon: cusicon,
          )
        ],
        title: cussearchbar,
        backgroundColor: Colors.blue,
      ),
      drawer: MenuBar(),
    );
  }
}
