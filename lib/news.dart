import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFB415B),
      ),
      home: News(),
      title: "News",
    );
  }
}

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  void _toggleVisibility() {
    setState(() {
      // _isHidden = !_isHidden;
    });
  }


 newpost(){
  return Container(
        padding: EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 40.0,),
            Text(
              "New post",
              
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
                 
              ),
            ),
            SizedBox(height: 40.0,),
            TextField(
      decoration: InputDecoration(
        hintText: "Your name",
        labelText: "Name",
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
          SafeArea(
             child: Text(
               "muqtada "
             ),
          ),
         
        
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: "Add Post",
                labelText: "News",
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
                      "Shear",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
          ],
        ),
      );

 }











  post() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        child: Material(
            borderRadius: BorderRadius.circular(24.0),
            elevation: 14,
            color: Colors.white,
            shadowColor: Colors.black,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top: 15,left: 15,right: 0),
                        margin: EdgeInsets.all(0),
                        alignment: Alignment.topLeft,
                        child: new Icon(
                          Icons.person,
                          size: 50,
                          color: Color(0xFFFB515B),
                        )),
                    Column(
                      children: <Widget>[

                                 Padding(padding: EdgeInsets.only(top: 10)),
                           Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text(
                            "Muqtada Najm",
                            style: new TextStyle(
                              fontSize: 22,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                            Container(
                              margin: EdgeInsets.only(left: 0),
                              padding: EdgeInsets.only(left: 0),
                              child: Text(
                                "2019/08/1 - 18:09",
                                style: new TextStyle(
                                  fontSize: 15,
                                  color: Colors.black45,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.all(15),
                        width: 350,
                        child: new Text(
                          "this is test of taken nesows for is not person coan per this is test of taken nesows for is not person coan per \n this is test of taken nesows for is not person coan per \n this is test of taken nesows for is not person coan per ",
                          style: new TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16,
                          ),
                        )),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Container(
                        alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(
                                right: 20,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.thumb_up),
                              onPressed: _toggleVisibility,
                              alignment: Alignment.bottomLeft,
                              color: Color(0xFFFB515B),
                              splashColor:Color(0xFFFB515B) ,
                              iconSize: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 80),
                            ),
                            IconButton(
                              icon: Icon(Icons.near_me),
                              onPressed: _toggleVisibility,
                              alignment: Alignment.bottomLeft,
                              color: Color(0xFFFB515B),
                              iconSize: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                right: 80,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.comment),
                              onPressed: _toggleVisibility,
                              alignment: Alignment.bottomRight,
                              color: Color(0xFFFB515B),
                              iconSize: 30,
                            ),
                          ],
                        )),
                  ],
                )
              ],
            )),
      ),
    );
  }

      int pos=0;

    showpage( ){
              setState(() {
            print(pos);
        },); 
      if(pos== 0){
        print(pos);
        return post();
      }else {
        return newpost();
      }
    }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      drawer: Drawer(
        semanticLabel: "hello",
        child: Container(
          decoration: BoxDecoration(),
          child: Column(
            children: <Widget>[
              Padding(padding:EdgeInsets.only(top:50,right: 0)),
              Text("Menu",
              style: TextStyle(
                fontSize: 30,
                backgroundColor: Color(0xFFFB515B)
                  ),
              ),
              SizedBox(height: 30,),
              FlatButton(
                child: Row(
                 children: <Widget>[
                   Text("LOGNAUT",
                   textAlign: TextAlign.left,
                   ),
                   Padding(padding: EdgeInsets.only(left: 140)),
                     Icon(Icons.autorenew,
                     color:Color(0xFFFB515B)),
                 ],
                ),
                onPressed: ()=>{print("now clicked")},
              )
            ],
          ),
        )
      ),
   
            bottomNavigationBar: FancyBottomNavigation(
        circleColor: Color(0xFFFB615B),
        tabs: [

          TabData(iconData: Icons.speaker_notes, title: "News",),
         
          TabData(iconData: Icons.send, title: "New News",
          //  onclick: ()=>{
          //  Navigator.of(context).pushNamed('/addnews'),
          // }
          )
        ],
        
        onTabChangedListener:(position) {
          setState(() {
            pos =position;
          });
        },
      ),

      appBar:AppBar(
        title: Center(
          child: Text("News"),
        ),
        backgroundColor: Color(0xFFFB515B),
      ),
      resizeToAvoidBottomPadding: false,
      
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
        
      showpage()
        
        ],
      ),
    );
  }
}
