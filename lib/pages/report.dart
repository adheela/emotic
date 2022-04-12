import 'package:auto_size_text/auto_size_text.dart';
import 'package:emotic/components/piechart.dart';
import 'package:emotic/components/popular.dart';
import 'package:emotic/components/predominant.dart';
import 'package:emotic/components/related.dart';
import 'package:emotic/components/viewall.dart';
import 'package:emotic/const/color.dart';
import 'package:emotic/const/nav_bar.dart';
import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({ Key? key }) : super(key: key);

  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavBar(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25,),
              child: Text('Sentiment Analysis Report', 
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: kRed,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Box(textName: "Hashtag"),
                  Box(textName: "#Ukraine"),
                ],
              ),
            ),
            GridView.count(
              primary: false,
              padding: const EdgeInsets.all(15),
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              mainAxisSpacing: 1.0,
              crossAxisSpacing: 1.0,
              shrinkWrap: true,
              children: [
                Predominant(),
                Chart(),
                Popular(),
                Related(),
              ], //Cards()
            ),
            Viewall(),
          ],
        ),
      ),
    );
  }
}

class Box extends StatefulWidget {
  final String textName;

  Box({
    required this.textName,
    });

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 3, color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: AutoSizeText(
            widget.textName,
            maxLines: 3,
            maxFontSize: 20,
            minFontSize: 1,
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
