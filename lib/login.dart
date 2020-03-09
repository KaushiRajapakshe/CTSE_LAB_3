import 'package:flutter/material.dart';
import 'package:myapp/review-screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Center(
          child: new Image.asset(
        'assets/login.jpg',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
      )),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 80, 20, 20),
          child: ListView(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.fromLTRB(30, 10, 0, 10),
                  child: Row(children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: ListTile(
                            leading: new Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                width: 65.0,
                                height: 60.0,
                                decoration: new BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: new DecorationImage(
                                        fit: BoxFit.fill,
                                        image: new NetworkImage(
                                            "https://previews.123rf.com/images/yupiramos/yupiramos"
                                            "1711/yupiramos171103780/89172584-female-fashion-h"
                                            "andbag-icon-vector-illustration-design.jpg")))))),
                    Expanded(
                        flex: 2,
                        child: Text("Treva Shop",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                  ])),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 0.0, top: 50.0, bottom: 0.0),
                child: new RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  padding: EdgeInsets.only(
                      top: 7.0, bottom: 7.0, right: 40.0, left: 7.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset('assets/f.png',
                          height: 40.0, width: 40.0),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            " Login with Facebook  ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 0.0, top: 20.0, bottom: 0.0),
                child: new RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  padding: EdgeInsets.only(
                      top: 7.0, bottom: 7.0, right: 40.0, left: 7.0),
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset('assets/g.png',
                          height: 40.0, width: 40.0),
                      Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: new Text(
                            " Login with Google       ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
              Center(
                child: (Text('OR',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 3))),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 20.0, bottom: 0.0),
                  child: new TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email",
                          hintStyle:
                              TextStyle(fontSize: 15.0, color: Colors.white),
                          icon: Icon(
                            Icons.email,
                            color: Colors.white,
                          )))),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 20.0, bottom: 0.0),
                  child: new TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Password",
                          hintStyle:
                              TextStyle(fontSize: 15.0, color: Colors.white),
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.white,
                          )))),
              Center(
                  child: Text('Not have an Account? Sign Up',
                      style: TextStyle(
                          color: Colors.white, fontSize: 15, height: 2.5))),
              Padding(
                padding: const EdgeInsets.only(
                    left: 0.0, right: 0.0, top: 20.0, bottom: 0.0),
                child: new RaisedButton(
                    color: Colors.deepPurple,
                    splashColor: Colors.purple,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    padding: EdgeInsets.only(
                        top: 7.0, bottom: 7.0, right: 40.0, left: 7.0),
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(left: 10.0, bottom: 5),
                            child: new Text(
                              " Login       ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white),
                            ))
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ReviewScreen()),
                      );
                    }),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
