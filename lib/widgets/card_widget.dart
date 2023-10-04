// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/card_model.dart';


class Card extends StatelessWidget {

  final Item item;

  const Card({required Key key , required this.item}) : assert(item!=null), super(key: key);

  // const Card({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Text("jell");

  }
}