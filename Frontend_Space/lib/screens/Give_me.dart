import 'package:flutter/material.dart';
import 'package:pa1_service/auths/forms/sponsorChild.dart';
import 'package:pa1_service/model/myColor.dart';

class Give extends StatefulWidget {
  const Give({ Key? key }) : super(key: key);

  @override
  _GiveState createState() => _GiveState();
}

class _GiveState extends State<Give> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body:PageView(
        children: [
          Container(
            height: _height,
            width: _width,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: _height*0.45,
                  width: _width,
                  child:const Image(image: AssetImage("assets/images/student.gif"),fit: BoxFit.fitWidth)),
                 const Text("Through your monthly subscripton you can ensure the monthly education support to children",style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,),ElevatedButton(onPressed: (){}, child:const Text("Subscribe"))
              ],
            ),
          ),
          Container(
            height: _height,
            width: _width,
            color: Colors.white,
            child: Column(
              children:  [
                Container(
                  height: _height*0.45,
                  width: _width,
                  child:const Image(image: AssetImage("assets/images/studeee.gif"),fit: BoxFit.fitWidth)),
                  const Text("Can you add atleast one child to your family and give him/her Education facilities ?",style: TextStyle(fontSize: 20,),textAlign: TextAlign.center,),ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SponsorChild()));
                  }, child:const Text("Sponsor A Child")),
              ],
            ),
          ),
        ],
      )
      );

  }
}