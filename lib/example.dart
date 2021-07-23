import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  HomeState createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  bool _hasCard;

  @override
  void initState() {
    super.initState();
    _hasCard = false;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    children.add(_buildBackground());
    if (_hasCard) children.add(_buildCard());

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: children,
      ),
    );
  }
  Widget _buildCard() => new Container(
    child: new Center(
      child: new Container(
        height: 700.0,
        width: 200.0,
        color: Colors.lightBlue,
        child: new Center(
          child: new Text("Card"),
        ),
      ),
    ),
  );

  Widget _buildBackground() => new Scaffold(

    body: ListView(children:<Widget>[
      Container(
        width: 300,
        height: 100,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.white,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
               ListTile(
                leading: ConstrainedBox(
              constraints:
              BoxConstraints(minWidth: 50, minHeight: 100),
            child:
            SizedBox(
width: 20,
                child:Image.asset(
              'assets/Images/Stadium.jpg',
              width: 20,
              height: 50,
            ))),
                title: Text(
                    'Tournament 1',
                    style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)
                ),
                subtitle: Text(
                    'AI Warah SC VS AL Khor Sc \n Report At:\n 22-May-2021',
                    style: TextStyle(fontSize: 10.0)
                ),
                 trailing: CircleAvatar(
                   radius: 20,
                   backgroundColor: Colors.indigo,
                   child: IconButton(
                       color: Colors.white,
                       padding: EdgeInsets.all(10),
                       iconSize: 20,
                       icon: Icon(Icons.edit),
                       onPressed: () {
                         // do something
                       }),
                 ),
              ),

            ],
          ),
        ), ),
      Container(
        width: 300,
        height: 100,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.white,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                    constraints:
                    BoxConstraints(minWidth: 50, minHeight: 100),
                    child:
                    SizedBox(
                        width: 20,
                        child:Image.asset(
                          'assets/Images/Stadium.jpg',
                          width: 20,
                          height: 50,
                        ))),
                title: Text(
                    'Tournament 1',
                    style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)
                ),
                subtitle: Text(
                    'AI Warah SC VS AL Khor Sc \n Report At:\n 22-May-2021',
                    style: TextStyle(fontSize: 10.0)
                ),
                trailing: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.indigo,
                  child: IconButton(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      iconSize: 20,
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // do something
                      }),
                ),
              ),

            ],
          ),
        ), ),Container(
        width: 300,
        height: 100,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.white,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                    constraints:
                    BoxConstraints(minWidth: 50, minHeight: 100),
                    child:
                    SizedBox(
                        width: 20,
                        child:Image.asset(
                          'assets/Images/Stadium.jpg',
                          width: 20,
                          height: 50,
                        ))),
                title: Text(
                    'Tournament 1',
                    style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)
                ),
                subtitle: Text(
                    'AI Warah SC VS AL Khor Sc \n Report At:\n 22-May-2021',
                    style: TextStyle(fontSize: 10.0)
                ),
                trailing: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.indigo,
                  child: IconButton(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      iconSize: 20,
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // do something
                      }),
                ),
              ),

            ],
          ),
        ), ),Container(
        width: 300,
        height: 100,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          color: Colors.white,
          elevation: 10,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: ConstrainedBox(
                    constraints:
                    BoxConstraints(minWidth: 50, minHeight: 100),
                    child:
                    SizedBox(
                        width: 20,
                        child:Image.asset(
                          'assets/Images/Stadium.jpg',
                          width: 20,
                          height: 50,
                        ))),
                title: Text(
                    'Tournament 1',
                    style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold)
                ),
                subtitle: Text(
                    'AI Warah SC VS AL Khor Sc \n Report At:\n 22-May-2021',
                    style: TextStyle(fontSize: 10.0)
                ),
                trailing: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.indigo,
                  child: IconButton(
                      color: Colors.white,
                      padding: EdgeInsets.all(10),
                      iconSize: 20,
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // do something
                      }),
                ),
              ),

            ],
          ),
        ), )
  ]));
}

void main() {
  runApp(
    new Home(),
  );
}