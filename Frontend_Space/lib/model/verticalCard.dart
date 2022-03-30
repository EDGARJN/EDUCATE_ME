import 'package:flutter/material.dart';

import '../auths/forms/client.dart';
import '../auths/forms/donor.dart';


class VerticalCard extends StatefulWidget {
  const VerticalCard({Key? key}) : super(key: key);

  @override
  _VerticalCardState createState() => _VerticalCardState();
}

class _VerticalCardState extends State<VerticalCard> {
  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height;
    final _width = MediaQuery.of(context).size.width;
    return  Column(
      children: [
        Card(
                child: Column(
                  children: [
                    Container(
                        height: _height*0.3,
                        // color: Colors.yellow,
                        decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage("assets/images/kid1.jpg"),fit: BoxFit.cover)
                        ),
                        child: Center(child: Text("DONORS"),),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text("A sample of 31 low- and lower-middle-income African and South Asian countries, showed that, on average, an urban child is almost five times more likely to complete secondary education than a rural child. And a boy is 1.55 times more likely than a girl to complete secondary school."),
                        
                      ),
                      // ElevatedButton(onPressed: (){
                      //   Navigator.push(context, MaterialPageRoute(builder: (context)=>DonorRegister()));
                      // }, child: Text("DONOR")),
                  ],
                ),
              ),
        Card(
                child: Column(
                  children: [
                    Container(
                        height: _height*0.3,
                        // color: Colors.yellow,
                        decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage("assets/images/kid.jpg"),fit: BoxFit.cover)
                        ),
                        child: Center(child: Text("DONORS"),),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text("Those Barriers can be avoided through fighting with them and not running from them, So You and me collaborate with the world to fight against poor education or low quality education in our world through provideing some staffs that you think they can help them to back and go on with school til end"),
                        
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DonorRegister()));
                      }, child: Text("BE A DONOR")),
                  ],
                ),
              ),
               Card(
                child: Column(
                  children: [
                    Container(
                        height: _height*0.3,
                        // color: Colors.yellow,
                        decoration: BoxDecoration(
                             image: DecorationImage(image: AssetImage("assets/images/kid4.jpg"),fit: BoxFit.cover)
                        ),
                        child: const Center(child: Text("DONORS"),),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text("Is there a child out of School ? Or lack basic needs to help him/her to get to school"),
                        
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ClientRegister()));
                      }, child:const Text("REPORT A CHILD")),
                  ],
                ),
              ),
      ],
    );
  }
}
