////import 'package:flutter/material.dart';
////import 'package:myapp/review.dart';
////
////class ShoppingItemList extends StatefulWidget{
////  final Review review;
////  ShoppingItemList(Review review, String s)
////      : review = review,
////        super(key: new ObjectKey(review));
////  @override
////  ShoppingItemState createState() {
////    return new ShoppingItemState(review);
////  }
////}
////class ShoppingItemState extends State<ShoppingItemList> {
////  final Review review;
////  ShoppingItemState(this.review);
////  @override
////  Widget build(BuildContext context) {
////    return new ListTile(
////        onTap:null,
////        leading: new CircleAvatar(
////          backgroundColor: Colors.blue,
////          child: new Image(image: new AssetImage(review.userAvatar)),
////        ),
////        title: new Row(
////          children: <Widget>[
////            new Expanded(child: new Text(review.description)),
////          ],
////        )
////    );
////  }
////}
//
//import 'package:flutter/material.dart';
//import 'review.dart';
//
//class ReviewList extends StatelessWidget {
//
//  final List<Review> _reviews;
//
//  ReviewList(this._reviews);
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView(
//        padding: EdgeInsets.symmetric(vertical: 8.0),
//        children: _buildContactList()
//    );
//  }
//
//  List<ReviewListItem> _buildContactList() {
//    return _reviews.map((contact) => ReviewListItem(contact))
//        .toList();
//  }
//
//}
//
//class ReviewListItem extends ListTile {
//
//  ReviewListItem(Review review) :
//        super(
//          title : Text(review.date),
//          subtitle: Text(review.description),
//          leading: CircleAvatar(
//              child: Text(review.userAvatar[0])
//          )
//      );
//
//}