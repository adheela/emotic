import 'package:emotic/const/color.dart';
import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  const Popular({ Key? key }) : super(key: key);

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return Card(
              elevation: 20,
              color: kCard,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Popular Tweets', 
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                      color: kRed,
                    ),),
                  ],),
              ),
            );
  }
}