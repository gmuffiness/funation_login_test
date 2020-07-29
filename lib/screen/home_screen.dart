import 'package:flutter/material.dart';
import 'package:netflix_clone_practice/model/movie_model.dart';
import 'package:netflix_clone_practice/widget/box_slider.dart';
import 'package:netflix_clone_practice/widget/circle_slider.dart';
import 'package:netflix_clone_practice/widget/carousel_slider.dart';
import 'dart:ui';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '하모리층 톳 쿠키',
      'keyword': '톳으로 만나는 제주의 환경',
      'poster': 'content1.png',
      'money': '6,000원 남음',
      'percentage': '82%',
      'like': false,
    }),
    Movie.fromMap({
      'title': '자연에서 만들어서 자연스러운 백',
      'keyword': 'test1',
      'poster': 'content2.png',
      'money': '6,000원 남음',
      'percentage': '82%',
      'like': false,
    }),
    Movie.fromMap({
      'title': '고기인듯 고기아닌 콩고기',
      'keyword': 'test2',
      'poster': 'content3.png',
      'money': '6,000원 남음',
      'percentage': '82%',
      'like': false,
    }),
    Movie.fromMap({
      'title': '싱그러운 딸기 맛을 그대로',
      'keyword': 'test3',
      'poster': 'content4.png',
      'money': '6,000원 남음',
      'percentage': '82%',
      'like': false,
    }),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack(
          children: <Widget>[
            CarouselImage(movies: movies),
            TopBar(),
          ],
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            '곧 마감입니다. 서둘러요!',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            '100%가 되면 종료됩니다.',
            style: TextStyle(fontSize: 10, color: Colors.black45),
          ),
        ),
        BoxSlider(
          movies: movies,
        )
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Tab(
            icon: Icon(
              Icons.search,
              size: 18,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 1),
            child: Text(
              '기부니가좋다',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Tab(
            icon: Icon(
              Icons.notifications_none,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
