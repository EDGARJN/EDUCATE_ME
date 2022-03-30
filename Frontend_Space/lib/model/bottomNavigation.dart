import 'package:flutter/material.dart';
import 'package:pa1_service/model/myColor.dart';
import 'package:pa1_service/screens/Give_me.dart';
import 'package:pa1_service/screens/home.dart';
import 'package:pa1_service/screens/mark.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({ Key? key }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var page_List = <Widget>[
    const Home(),
    const Give(),
  ];

  var _selectedPage = 0;

  pages(int index){
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: pages,
        backgroundColor: Color_me().themeColor,
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.roofing,color: Color_me().iconColor,), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.volunteer_activism,color: Color_me().iconColor,),label: "GiveMe"),
        ]),
      body: page_List[_selectedPage],
    );
  }
}