import 'menu.dart';
import 'package:flutter/material.dart';
class Contribute extends StatefulWidget {
  @override
  _ContributeState createState() => _ContributeState();
}

class _ContributeState extends State<Contribute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contribute"),
      ),
      drawer: MenuBar(),
    );
  }
}
