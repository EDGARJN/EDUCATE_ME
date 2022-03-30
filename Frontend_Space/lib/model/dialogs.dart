
import 'package:flutter/material.dart';
import 'package:pa1_service/model/bottomNavigation.dart';
import 'package:pa1_service/screens/home.dart';

class DialogsBox{
  void regDialog(context){
    showDialog(context: context,
     builder: (context)=>AlertDialog(
        title:const Text("Thanks"),
        content:const Text("Thank For Registration as a Donor. We call you soon For more conversation"),
        actions: [TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const BottomNavBar()));
        }, child:const  Text("OK"))],
     ));
  }
  void clientDialog(BuildContext context){
 showDialog(context: context, builder: (context){
   return AlertDialog(
     title: Text("Hi Hero"),
     content: Text("Thank For Registering this Child, We are going to provide solution to this child"),
     actions: [
       TextButton(onPressed: (){
         Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavBar()));
       }, child: Text("Amen"))
     ],
   );
 });
  }

  void sorrDialog(BuildContext context){
    showDialog(context: context, builder: (context){
      return  AlertDialog(
        title: const Text("Sorry !!"),
        content:const Text("This Option is UnderConstruction"),
        actions: [
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavBar()));
          }, child: const Text("Ok"))
        ],
      );
    });
  }
}