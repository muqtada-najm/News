import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart'as http;


class MyApp extends StatefulWidget  {
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeData(
  //       primaryColor: Color(0xFFFB415B),
  //     ),
  //     home: LoginPage(),
  //     title: "Login",
  //   );
  // }

  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isHidden = true;
  var x;
  String email;
  String password;
  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
      void _email(String value) {
    setState(() {
      email = value;
    });
  }
        void _passwoed(String value) {
    setState(() {
      password = value;
    });
  }
Future<Null> loginApi() async {
   String myUrl = "https://muqtada-najm.000webhostapp.com/index.php?status=login&email=$email&password=$password";
     http.Response  response = await http.get(myUrl);
     var gw=  json.decode(response.body);
     print(json.decode(response.body));
  setState(() {
       x = gw;
    });
}
  Future<Null> showalert() async {
    return showDialog<Null>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text("resat passowrd"),
            content: new SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("enter your email"),
                  TextField(
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
                ],
              ),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text(
                  "cencl",
                  style: new TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                onPressed: () => {Navigator: Navigator.pop(context)},
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding:
            EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
            
            SizedBox(
              height: 40.0,
            ),            
            SizedBox(
              height: 40.0,
            ),
            TextField(
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
              onChanged: _email,
            ),
            SizedBox(
              height: 20.0,
            ),
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
                  icon: _isHidden
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
                
              ),
              obscureText: _isHidden,
              onChanged: _passwoed,
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FlatButton(
                    child: new Text(
                      "Forgotten Password?",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    onPressed: showalert,
                  ),
                ],
              ),
            ),
 SizedBox(height: 15.0),
            FlatButton(
              child: new Container(
              height: 56.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23.0),
                gradient: LinearGradient(
                    colors: [Color(0xFFFB415B), Color(0xFFEE8623)],
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft),
              ),
              child: Center(
                child:  new Text(
                  "LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
                            onPressed: loginApi,

            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    SizedBox(
                      width: 2.0,
                    ),
                    FlatButton(
                      child: new Text("SIGN UP"),
                      onPressed: () {
                        Navigator.of(context).pushNamed("/signup");
                      },
                      textColor: Theme.of(context).primaryColor,
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
