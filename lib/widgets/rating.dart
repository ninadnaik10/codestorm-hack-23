// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class Rating extends StatelessWidget {

  const Rating({super.key});
  
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 10.0),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        size: 10,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );

  }
}