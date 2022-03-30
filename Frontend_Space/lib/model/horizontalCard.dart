import 'package:flutter/material.dart';

class HorizontalCard extends StatefulWidget {
  const HorizontalCard({ Key? key }) : super(key: key);

  @override
  _HorizontalCardState createState() => _HorizontalCardState();
}

class _HorizontalCardState extends State<HorizontalCard> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return Container(
      height: _height,
      width: _width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
            Card(
              child: Column(
                children: [
                  Container(
                    width: _width*0.45,
                    height: _height*0.15,
                    decoration:const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/kid7.jpeg"),fit: BoxFit.cover)
                    ),  
                  ),
                  Container(
                    height: _height*0.13,
                    width: _width*0.45,
                    child: Text("45% of Tanzanian Children lack  Education due to absence of school fees,uniforms, stationaries and food"),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Container(
                    width: _width*0.45,
                    height: _height*0.15,
                    decoration:const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/kidPakistan.jpeg"),fit: BoxFit.cover)
                    ),  
                  ),
                  Container(
                    height: _height*0.13,
                    width: _width*0.45,
                    child: Text("65% of Pakistan workers are Children that means there is a poor education that can be swapped by us donate now to help thousands of pakistan children to get education"),
                  )
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Container(
                    width: _width*0.45,
                    height: _height*0.15,
                    decoration:const BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/kidsensa.jpeg"),fit: BoxFit.cover)
                    ),  
                  ),
                  Container(
                    height: _height*0.13,
                    width: _width*0.45,
                    child:const Text("This is what happening in PAKISTAN, Did You know that: Me and You We can Collaborate today and make change to PAKISTAN Children "),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}