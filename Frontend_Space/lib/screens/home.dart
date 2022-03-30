import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pa1_service/model/fonts.dart';
import 'package:pa1_service/model/horizontalCard.dart';
import 'package:pa1_service/model/myColor.dart';
import 'package:pa1_service/model/verticalCard.dart';
import 'package:pa1_service/screens/donateScreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.child_care),color: Colors.white,),
        title: Text(
          "educate_me",
          style: Fonts_model().main_font,
        ),
        actions: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const DonateAmount()));
          }, child: Column(
            children: [
               Icon(Icons.volunteer_activism),
              Text("Donate")
            ],
          ))
        ],
        backgroundColor: Color_me().iconColor,
      ),
      body: ListView(
        children: [
          Container(
            height: _height*0.6,
            width: _width,
            child: Stack(
              children: [
                Positioned(
                    top: 2,
                    left: 2,
                    right: 2,
                    height: _height * 0.20,
                    child: Card(
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/kid5.jpg"),fit: BoxFit.cover)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('"I hate ignorance, I was born in Poor Family But I don\'t want to be a poor... Who Can Give me an education..?"  - Sound From Youngs -',style: TextStyle(fontSize: 15,color: Color_me().iconColor,)),
                            ),
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: _height * 0.21,
                    right: 0,
                    left: 0,
                    height: _height * 0.05,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Do You Know ?",
                        style: TextStyle(fontSize: 20),
                      ),
                    )),
                Positioned(
                  top: _height * 0.28,
                  right: 0,
                  left: _height * 0.01,
                  height: _height * 0.30,
                  child: const HorizontalCard()
                ),
              ],
            ),
          ),
         const VerticalCard()
          
           
        ],
      ),
    );
  }
}
