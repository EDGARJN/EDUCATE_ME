import 'package:flutter/material.dart';
import 'package:pa1_service/model/dialogs.dart';
import 'package:pa1_service/service/waiter.dart';

class DonateAmount extends StatefulWidget {
  const DonateAmount({ Key? key }) : super(key: key);

  @override
  _DonateAmountState createState() => _DonateAmountState();
}

class _DonateAmountState extends State<DonateAmount> {

  String? amount;

  void payAPI(){
    if(formKey.currentState!.validate()){
     Waiter().payPal(amount!);
      
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
         child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
        
           children: [
             Container(
               width: _width,
               child: Image(image: AssetImage("assets/images/moneyedu.jpg"),fit: BoxFit.fitWidth,),
             ),
             SingleChildScrollView(
               child: Container(
                 margin: EdgeInsets.all(20),
                 padding: EdgeInsets.all(10),
                //  height: _height*0.,
                //  color: Colors.blueAccent,
                 child: Form(
                   key: formKey,
                   child: 
                 Column(
                   children: [
                     
                     TextFormField(
                       validator: (val)=>val!.isEmpty?"Please Enter Amount":null,
                       onChanged: (val){
                         setState(() {
                           amount = val;
                         });
                       },
             
                       decoration:const InputDecoration(
                         border: OutlineInputBorder(),
                         labelText: "Donated Amount(USD)"
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Pay By:"),
                     ),
                     ElevatedButton(onPressed: (){payAPI();}, child:Image(image: AssetImage("assets/images/PayPal-Logo.png"),width: 80,)
                     
                     )
                   ],
                 )),
               ),
             ),
           ],
         ),
      ),
    );
  }
}