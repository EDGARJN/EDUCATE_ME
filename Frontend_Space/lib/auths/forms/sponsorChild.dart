import 'package:flutter/material.dart';

import '../../model/dialogs.dart';

class SponsorChild extends StatefulWidget {
  const SponsorChild({ Key? key }) : super(key: key);

  @override
  _SponsorChildState createState() => _SponsorChildState();
}

class _SponsorChildState extends State<SponsorChild> {

String? fname,phone,stName,location,school,challenge;

  void clientReg(){
    if(formKey.currentState!.validate()){
     
        DialogsBox().sorrDialog(context);
      }
      
  }

  // For Validation
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
     double _height = MediaQuery.of(context).size.height;
    double _width  = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.1,
      ),
      body: SingleChildScrollView(
        child: Container(
           height: _height,
           width: _width,
           child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 height:_height*0.1,
                //  color: Colors.blueAccent,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(1000),bottomRight: Radius.circular(1000))
                ),
               ),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Form(
                   key: formKey,
                   child: 
                 Column(
                   children: [
                     Text("Your Infos",textAlign: TextAlign.left,),
                     Row(children: [
                       Container(
                         margin: EdgeInsets.all(10),
                         width: _width*0.5,
                         child: TextFormField(
                           validator: (val)=>val!.isEmpty?"Enter Your full Name":null,
                           onChanged: (val){
                             setState(() {
                               fname = val;
                             });
                           },
                           decoration: const InputDecoration(
                             labelText: "Full Name"
                           ),
                         ),
                       ),
      
                       Container(
                         width: _width*0.35,
                         child: TextFormField(
                           validator: (val)=>val!.isEmpty?"Enter Your Number":null,
                           onChanged: (val){
                             setState(() {
                               phone = val;
                             });
                           },
                           decoration: const InputDecoration(
                             labelText: "Phone Number/Email"
                           ),
                         ),
                       ),
                     ],),
      
                    const Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Child Infos",textAlign: TextAlign.left,),
                     ),
                    Row(children: [
                       Container(
                         margin: EdgeInsets.all(8),
                         width: _width*0.5,
                         child: TextFormField(
                           validator: (val)=>val!.isEmpty?"Enter Student Name":null,
                           onChanged: (val){
                             setState(() {
                               stName = val;
                             });
                           },
                           decoration: const InputDecoration(
                             labelText: "Full Name"
                           ),
                         ),
                       ),
                       Container(
                         width: _width*0.4,
                         child: TextFormField(
                           validator: (val)=>val!.isEmpty?"Add Your Location":null,
                           onChanged: (val){
                             setState(() {
                               location = val;
                             });
                           },
                           decoration: const InputDecoration(
                             labelText: "Current Location"
                           ),
                         ),
                       ),
                     ],),
                     Container(
                       margin: EdgeInsets.all(8),
                       child: TextFormField(
                         validator: (val)=>val!.isEmpty?"School Name If not write nill":null,
                         onChanged: (val){
                           setState(() {
                             school = val;
                           });
                         },
                         decoration: const InputDecoration(
                           labelText: "School"
                         ),
                       ),
                     ),
                     SizedBox(width: _width*0.02,),
                     Container(
                       margin: EdgeInsets.all(8),
                       child: TextFormField(
                         validator: (val)=>val!.isEmpty?"What's Help You Wish To Get":null,
                         onChanged: (val){
                           setState(() {
                             challenge = val;
                           });
                         },
                         decoration: const InputDecoration(
                          hintText: "Challenge, Help He/She Expect From us"
                         ),
                       ),
                     ),
                     ElevatedButton(onPressed: (){clientReg();}, child:Text("Register a child"))
                   ],
                 )),
               ),
             ],
           ),
        ),
      ),
    );
  }
}