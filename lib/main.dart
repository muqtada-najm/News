import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/news.dart';
import 'package:flutter_app/signup.dart';
import 'package:flutter_app/addnews.dart';
void main() async{
//  var ishome =  new LoginPage();
// List isdata = await(ishome.getData());
// print(isdata[1]);
      runApp(MyApp());
} 

class MyApp extends StatelessWidget{

  @override

  
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFB415B),
      ),
      home: News(),
      title: "IRAQ NEWS",
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context)=> new LoginPage(),
        '/signup': (BuildContext context)=> new Signup(),
        '/news': (BuildContext context)=> new News(),
        '/addnews': (BuildContext context)=> new AddNews()
      },
    );
  }
}

