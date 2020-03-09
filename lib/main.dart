import 'package:flutter/material.dart';

import 'login.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/logo.jpg',
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Center(
                  child: Text("Treva Shop", style: TextStyle(fontSize: 30))),
              elevation: 0.0,
            ),
            body: Container(
                margin: EdgeInsets.fromLTRB(80, 150, 80, 80),
                width: 280,
                alignment: Alignment.topCenter,
                child: Column(children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    child: Container(
                      height: 1.3,
                      width: 150.0,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Get best product in treva shop',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                      child: RaisedButton(
                        color: Colors.transparent,
                        splashColor: Colors.grey,
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 75.0),
                        child: Text('Signup',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                            side: BorderSide(color: Colors.white)),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(children: <Widget>[
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(25, 0, 10, 0),
                            height: 1.3,
                            color: Colors.white,
                          ),
                        ),
                        Text("OR SKIP",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 25, 0),
                            height: 1.3,
                            color: Colors.white,
                          ),
                        ),
                      ])),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: RaisedButton(
                          color: Colors.transparent,
                          splashColor: Colors.grey,
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 83.0),
                          child: Text('Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                              side: BorderSide(color: Colors.white)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          }))
                ]))),
      ],
    );
  }
}
