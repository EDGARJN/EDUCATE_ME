import 'package:flutter/material.dart';
import 'package:pa1_service/model/dialogs.dart';
import 'package:pa1_service/service/waiter.dart';

class DonorRegister extends StatefulWidget {
  const DonorRegister({ Key? key }) : super(key: key);

  @override
  _DonorRegisterState createState() => _DonorRegisterState();
}

class _DonorRegisterState extends State<DonorRegister> {

  String? name,email,contact;

  void donorReg(){
    if(formKey.currentState!.validate()){
      Waiter().donorReg(name!, email, contact,context);
      
    }
  }

  // For Validation
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width  = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
         height: _height,
         width: _width,
         child: ListView(
          //  mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               width: _width,
               child: Image(image: AssetImage("assets/images/donor.jpeg"),fit: BoxFit.fill,)),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Form(
                 key: formKey,
                 child: 
               Column(
                 children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Register As A Donor"),
                  ),
                   TextFormField(
                     validator: (val)=>val!.isEmpty?"Please Enter Your name":null,
                     onChanged: (val){
                       setState(() {
                         name = val;
                       });
                     },

                     decoration:const InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: "Full Name"
                     ),
                   ),
                   SizedBox(height: _height*0.02,),
                   TextFormField(
                     validator: (val)=>val!.isEmpty?"Enter Your Verified Email":null,
                     onChanged: (val){
                       setState(() {
                         email = val;
                       });
                     },

                     decoration:const InputDecoration(
                       labelText: "Email",
                       border: OutlineInputBorder()
                     ),
                   ),
                   SizedBox(height: _height*0.02,),
                   TextFormField(
                     validator: (val)=>val!.isEmpty?"Enter Your Contact":null,
                     onChanged: (val){
                       setState(() {
                         contact = val;
                       });
                     },

                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: "Contact Number"
                     ),
                   ),
                   ElevatedButton(onPressed: (){donorReg();}, child:Text("Be a donor"))
                 ],
               )),
             ),
           ],
         ),
      ),
    );
  }
}