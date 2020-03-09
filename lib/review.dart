class Review {
  final double rate;
  final String date;
  final String userAvatar;
  final String description;

  const Review({this.rate, this.date, this.userAvatar, this.description});
}

const kReviews = <Review>[
  Review(
      rate: 1,
      date: "01 Jan 2019",
      userAvatar: "assets/logo.jpg",
      description: 'It is a simple class where a contact data is defined.'),
//  Review(
//      rate: 4,
//      date: "01 Feb 2020",
//      userAvatar: "assets/logo.jpg",
//      description:
//          'What is more, constructor is defined as a const in order to create '
//              'instance constants in compilation time.'),
//  Review(
//      rate: 2,
//      date: "01 Jun 2019",
//      userAvatar: "assets/logo.jpg",
//      description:
//          'Next step is creating a sample contacts list, the example below '
//              'represents a list populated with two contacts.'),
//  Review(
//      rate: 3,
//      date: "11 Dec 2019",
//      userAvatar: "assets/logo.jpg",
//      description: 'It is a simple class where a contact data is defined.')
];
