import 'package:flutter/material.dart';

class Mark extends StatefulWidget {
  const Mark({ Key? key }) : super(key: key);

  @override
  _MarkState createState() => _MarkState();
}

class _MarkState extends State<Mark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange,
        child: Center(child: Text("3"),),
        
      ),
    );
  }
}