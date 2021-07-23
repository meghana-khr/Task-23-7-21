import 'package:flutter/material.dart';

import 'example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>with SingleTickerProviderStateMixin {

  TabController _controller;

  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar:
      new PreferredSize(

        child: new Container(
          /* padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top
              ),*/
          child: new Padding(
            padding: const EdgeInsets.only(
                left: 1.0,
                top: 20.0,
                bottom: 15.0
            ),
            child:  Row(
              children: <Widget>[

                IconButton(
                  //Icons.arrow_back,
                  // color: Colors.white,
                  //iconSize: 30.0,
                  onPressed: () {
                  },
                  icon: new Icon(Icons.arrow_back,
                    color: Colors.white,
                    //    size: 25
                  ),

                ),
                // SizedBox(width: 10,),

                SizedBox(width: 12.0,),
                Expanded(
                  child:Text("Events", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ), maxLines: 4,
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.justify,),
                ),

                // SizedBox(width: 10.0,),
                Container(
                    child:
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                            ] ),
                        //  SizedBox(height: 10,),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        ),

                      ],
                    )
                ),


              ],
              // ...
            ),

          ),


          //gname==null?Text("GPname"):Text(gname
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.only(
                //bottomLeft: const Radius.circular(40.0),
                //bottomRight: const Radius.circular(40.0),
              ),
              gradient: LinearGradient(
                  colors: [Color(0xFF1A427A), Color(0xFF1A427A)],
                  //begin: Alignment.topLeft,
                  //end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey[500],
                  blurRadius: 20.0,
                  spreadRadius: 1.0,
                )

              ]
          ),
        ),
        preferredSize: new Size(
            MediaQuery.of(context).size.width,
            70.0
        ),
      ),

      body:
      new TabBarView(
        controller: _controller,
          children: <Widget>[
            Home(),
            Home(),
            Home(),
            Home(),
          ]
      ),
      bottomNavigationBar: new BottomNavigationBar(
        selectedItemColor: Colors.indigo,

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.event,color: Colors.indigo),
              title: Text('Events'),
            ),BottomNavigationBarItem(
              icon: Icon(Icons.people_outline,color: Colors.indigo),
              title: Text('Events'),
            ),BottomNavigationBarItem(
              icon: Icon(Icons.edit,color: Colors.indigo),
              title: Text('Enrollments'),
            ),BottomNavigationBarItem(
              icon: Icon(Icons.notifications,color: Colors.indigo,),
              title: Text('Notiications'),
            ),
          ],unselectedItemColor:Colors.indigo ,


      ),
    );
  }
}
