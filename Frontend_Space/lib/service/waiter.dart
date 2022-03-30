import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:pa1_service/model/dialogs.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;

class Waiter{
  var ip = "https://pamojaapis.herokuapp.com";



  Future donorReg(String name,email,contact,BuildContext context)async{
    var url = Uri.parse(ip+"/api/createDonor");
    try {
      var resBody = await http.post(url,body: {"d_name":name,"d_email":email,"d_contact":contact});
      var decodBody = json.decode(resBody.body);
      if(resBody.statusCode ==200){
        DialogsBox().regDialog(context);
        print(decodBody);
      }else{ print("Something Happen My Boe");}
    } catch (e) {
      print("Strong Error My Boe: $e");
    }


  }

  // Client Register
  Future clientReg(String?fname,phone,stName,location,school,challenge,BuildContext context)async{
    var url = Uri.parse(ip+"/api/createObserver");
    try {
      var resBody = await http.post(url,body: {"o_name":fname,"o_communicate":phone,"fname":stName,"settle":location,"sch":school,"expectation":challenge});
      var decodeBody = json.decode(resBody.body);
      if(resBody.statusCode == 200){
        DialogsBox().clientDialog(context);
        print(decodeBody);
      }else{print("Some Error Occur");}
    } catch (e) {
      print("There Is An Error : $e");
    }
  }

// Special For Paypal
  Future payPal(String amount) async{
    var url = Uri.parse(ip+"/api/payPal");
    try {
      var resBody = await http.post(url,body: {"amount":amount});
      var decodeBody = json.decode(resBody.body);
      if(resBody.statusCode == 200){
        await launch(decodeBody);
      }else{print("No decoded Body");}
    } catch (e) {
      
      print("THere is an erro: $e");
    }
    
  }
}