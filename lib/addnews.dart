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
      home: AddNews(),
      title: "Add News",
    );
  }
}

class AddNews extends StatefulWidget {
  @override
  _AddNewsState createState() => _AddNewsState();
}

class _AddNewsState extends State<AddNews> {
  void _toggleVisibility() {
    setState(() {
      // _isHidden = !_isHidden;
    });
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

  @override
  Widget build(BuildContext context) {
    var pos=1;
    return Scaffold(
      
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: Color(0xFFFB615B),
        tabs: [

          TabData(iconData: Icons.speaker_notes, title: "News",
          onclick: ()=>{
           Navigator.of(context).pop()
          }),
          TabData(iconData: Icons.send, title: "New News",)
        ],
        
        onTabChangedListener: (position) {
          setState(() {
            if(position == 0){
          // Navigator.of(context).pop();
            }
          });
        },
      ),
      appBar:AppBar(
        title: Center(
          child: Text("Add news "),
        ),
        backgroundColor: Color(0xFFFB515B),
      ),
      resizeToAvoidBottomPadding: false,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
        
        ],
      ),
    );
  }
}
