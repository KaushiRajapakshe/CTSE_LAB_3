import 'package:flutter/material.dart';
import 'package:myapp/star-display.dart';

class ReviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final databaseReference = Firestore.instance.collection("review");

    void getData() {
      databaseReference
          .getDocuments()
          .then((QuerySnapshot snapshot) {
        snapshot.documents.forEach((f) => print('${f.data}}'));
      });
    }
    text = _multiLineTextFieldcontroller.text;
    DocumentReference ref = await databaseReference
        .add({
      'text': text,
      'rating': rating,
      'date': date,
      'image': image
    });
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Center(
              child: Text('Reviews',
                  style: TextStyle(fontSize: 20, color: Colors.black))),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => Navigator.pop(context, false),
          )),
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: ListView(
          children: <Widget>[
            Text('Reviews',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Row(children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: IconTheme(
                      data: IconThemeData(
                        color: Colors.yellow,
                        size: 27,
                      ),
                      child: StarDisplay(value: 3),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Text('4 Reviews', style: TextStyle(fontSize: 15))),
                ])),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: new Container(
                  width: 50.0,
                  height: 45.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://pbs.twimg.com/media/C-_D_HCUMAA6M20.jpg")))),
              title: new Container(
                  child: Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 20,
                    ),
                    child: StarDisplay(value: 4),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Text('21 Mar 2019', style: TextStyle(fontSize: 12))),
              ])),
              subtitle: new Container(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        "Meeting men at bars is like window shopping. \n"
                        "You're looking at fancy clothes on a bunch of dummies.\n"
                        "You haven't felt pain unless you've gotten a shopping "
                        "cart's wheel hit at the back of your heal.",
                        style: TextStyle(height: 1.2),
                      ))),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: new Container(
                  width: 50.0,
                  height: 45.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://2.bp.blogspot.com/-P0TDlfYjGOI/XG-q9RuayCI"
                              "/AAAAAAAAXcw/ibiJVxyr6KMEXyQpsdxhJ1UY2O12PQYTwCLcBGAs/s320/kn1.png")))),
              title: new Container(
                  child: Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 20,
                    ),
                    child: StarDisplay(value: 3),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Text('01 Jan 2019', style: TextStyle(fontSize: 12))),
              ])),
              subtitle: new Container(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        "You haven't felt pain unless you've gotten a shopping "
                        "cart's wheel hit at the back of your heal.",
                        style: TextStyle(height: 1.2),
                      ))),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: new Container(
                  width: 50.0,
                  height: 45.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://img.picture.lk/data/photos/DNpxwcVvB33.JPG")))),
              title: new Container(
                  child: Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 20,
                    ),
                    child: StarDisplay(value: 2),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Text('14 Feb 2020', style: TextStyle(fontSize: 12))),
              ])),
              subtitle: new Container(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        "Meeting men at bars is like window shopping."
                        "You haven't felt pain unless you've gotten a shopping "
                        "cart's wheel hit at the back of your heal.",
                        style: TextStyle(height: 1.2),
                      ))),
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              leading: new Container(
                  width: 50.0,
                  height: 45.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://avatars0.githubusercontent.com/u/43184001?s=460&v=4")))),
              title: new Container(
                  child: Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: IconTheme(
                    data: IconThemeData(
                      color: Colors.yellow,
                      size: 20,
                    ),
                    child: StarDisplay(value: 3),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Text('11 Dec 2019', style: TextStyle(fontSize: 12))),
              ])),
              subtitle: new Container(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Text(
                        "Meeting men at bars is like window shopping.",
                        style: TextStyle(height: 1.2),
                      ))),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
