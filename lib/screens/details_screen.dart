import 'dart:math';

import 'package:flamingo_ebook/constants.dart';
import 'package:flamingo_ebook/widgets/book_rating.dart';
import 'package:flamingo_ebook/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * 0.4,
                  constraints: BoxConstraints(minHeight: 350),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 24),
                    child: Column(
                      children: [
                        SizedBox(height: size.height * 0.1),
                        BookInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: max(size.height * 0.40, 350) - 30.0,
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    children: [
                      ChapterCard(
                        chapterNo: 1,
                        title: 'Money',
                        tag: 'Life is about change',
                        onPressed: () {},
                      ),
                      ChapterCard(
                        title: "Power",
                        chapterNo: 2,
                        tag: "Everything loves power",
                        onPressed: () {},
                      ),
                      ChapterCard(
                        title: "Influence",
                        chapterNo: 3,
                        tag: "Influence easily like never before",
                        onPressed: () {},
                      ),
                      ChapterCard(
                        title: "Win",
                        chapterNo: 4,
                        tag: "Winning is what matters",
                        onPressed: () {},
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: "You might also "),
                        TextSpan(
                          text: "like...",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              width: double.infinity,
              height: 245,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 24,
                        top: 24,
                        right: size.width * .35,
                      ),
                      height: 230,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEAEA).withOpacity(.45),
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "How To Win \nFriends &  Influence",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            "Gary Venchuk",
                            style: TextStyle(color: kLightBlackColor),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 10,
                              bottom: 10,
                              right: 10,
                            ),
                            child: Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: BookRating(score: 4.9),
                                ),
                                Expanded(
                                  child: RoundedButton(
                                    text: 'Read',
                                    verticalPadding: 10,
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Image.asset(
                      "assets/images/book-3.png",
                      width: size.width * .37,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  const ChapterCard({
    Key key,
    @required this.chapterNo,
    @required this.title,
    @required this.tag,
    this.onPressed,
  }) : super(key: key);

  final int chapterNo;
  final String title;
  final String tag;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(0.84),
          ),
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Chapter $chapterNo : $title\n',
                  style: TextStyle(
                    color: kBlackColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: tag,
                  style: TextStyle(
                    color: kLightBlackColor,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: onPressed,
          )
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Crushing &",
                style: Theme.of(context).textTheme.headline4,
              ),
              Text(
                "Influence",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Text(
                          "When the earth was flat andeveryone wanted to win the gameof the best and people and winning with an A game with all the things you have.",
                          maxLines: 5,
                          style: TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        RoundedButton(
                          text: "Read",
                          verticalPadding: 10,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 4),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ),
                      BookRating(score: 4.9),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          "assets/images/book-1.png",
          height: 200,
        ),
      ],
    );
  }
}
