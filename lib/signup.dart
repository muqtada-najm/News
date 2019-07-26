import 'package:flutter/material.dart';

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFB415B),
      ),
      home: Signup(),
      title: "Signup",
    );
  }
}

class Signup extends StatefulWidget{
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup>{

  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }



  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40.0,),
            Text(
              "SIGNUP",
              
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
                 
              ),
            ),
            SizedBox(height: 40.0,),
            TextField(
      decoration: InputDecoration(
        hintText: "name",
        labelText: "name",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: Icon(Icons.person),
       
      ),
    ),
     SizedBox(height: 20.0,),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "email",
                labelText: "email",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                prefixIcon: Icon(Icons.email),
              
              ),
    ),
            SizedBox(height: 20.0,),
TextField(
      decoration: InputDecoration(
        hintText: "password",
        labelText: "password",
        hintStyle: TextStyle(
          color: Colors.grey,
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: Icon(Icons.lock),
        suffixIcon: IconButton(
          onPressed: _toggleVisibility,
          icon: _isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
        ),
      ),
      obscureText: _isHidden,
    ),
            SizedBox(height: 50.0),
            Container(
                  height: 56.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23.0),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFB415B),
                        Color(0xFFEE8623)
                      ],
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "SIGNUP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.0,),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("You have an account?"),
                    SizedBox(width: 1.0,),
                     FlatButton(
                      child:new Text("LOGIN"),
                      onPressed: (){ Navigator.of(context).pop();},
                       textColor:  Theme.of(context).primaryColor,
                       ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}