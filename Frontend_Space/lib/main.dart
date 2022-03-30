import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pa1_service/model/bottomNavigation.dart';
import 'package:pa1_service/model/myColor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

Future<void> main() async{
  //   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value)=>
  
  // runApp(const MyApp())
  // );
  await WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((value) => 
  runApp(const MyApp())
  );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MySplash(),
    );
  }
}

class MySplash extends StatefulWidget {
  const MySplash({ Key? key }) : super(key: key);

  @override
  _MySplashState createState() => _MySplashState();
}

// This widget is the first view in our pa1 app

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {

  //  Deleayed methode to page 1
  Future.delayed(const Duration(seconds: 5),()=>{
    Navigator.push(context, PageTransition(child:const BottomNavBar(), type: PageTransitionType.leftToRight,duration: Duration(milliseconds: 2000))),
  });

    return Scaffold(
      backgroundColor: Color_me().themeColor,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.volunteer_activism,color: Color_me().iconColor,size: 100,),
          Text("educate_me",style: GoogleFonts.comforter(textStyle: TextStyle(color: Color_me().iconColor,fontSize: 50)) ),
        ],
      ),),
    );
  }
}