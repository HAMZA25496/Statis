import 'package:first_company_project/CustomWidgets/custom_container.dart';
import 'package:first_company_project/CustomWidgets/custom_avatar.dart';
import 'package:first_company_project/CustomWidgets/custom_listtile.dart';
import 'package:first_company_project/Screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:video_player/video_player.dart';
import '../Constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late VideoPlayerController _controller;
  double? _ratingValue;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    _controller = VideoPlayerController.asset('video/bee.mp4');
    _controller.addListener(() {
      setState(() {});
    });
    _controller.initialize();
    // .then((_) => setState(() {}));_controller.pause();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Statics",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchScreen()));
                },
                icon: Icon(
                  Icons.message,
                  size: 30,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "For You",
                style: kRowStartTextStyle
              ),
              Text(
                "See All ",
                style:kRowEndTextStyle,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 80,
          child: ListView.separated(
              padding: EdgeInsets.only(left: 13),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: ((context, index) {
                return Row(
                  children: [
                    SizedBox(width: size.width * 0.15,
                        child: CustomAvatar("Buisnesss", "images/1.png")),
                  ],
                );
              }),
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 20,
                );
              }),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending Surveys",
                style: kRowStartTextStyle
              ),
              Text(
                "See More",
                style: kRowEndTextStyle
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 47,
          child: ListView.separated(
              padding: EdgeInsets.only(left: 12.0),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: ((context, index) {
                return TrendingContainer(Color(0xFF24903C));
              }),
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 20,
                );
              }),
        ),
        SizedBox(
          height: 10.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending Votes",
                style: kRowStartTextStyle,
              ),
              Text(
                "See More",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        SizedBox(
          height: 47,
          child: ListView.separated(
              padding: EdgeInsets.only(left: 12.0),
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: ((context, index) {
                return TrendingContainer(Color(0xFF2B80D3));
              }),
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 20,
                );
              }),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Text(
            "Resent Posts",
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
          ),
        ),
        CustomListTile(),
        SizedBox(
          height: size.height * 0.8,
          child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return  Column(
                children: [
                  AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          VideoPlayer(_controller),
                          SizedBox(
                            height: size.height,
                            width: size.width,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  _controller.value.isPlaying
                                      ? _controller.pause()
                                      : _controller.play();
                                });
                              },
                              icon: Icon(
                                _controller.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_circle_fill,
                                color: Colors.white,
                                size: 60,
                              ),
                            ),
                          )
                        ],
                      ),

                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text("4,5"),
                            Text("(290)"),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("1500 views"),
                        Spacer(),
                        SizedBox(
                          height: 30,
                          width: 100,
                          child: FittedBox(
                            child: Row(
                              children: [
                                RatingBar(
                                    initialRating: 0,
                                    direction: Axis.horizontal,
                                    allowHalfRating: false,
                                    // allowHalfRating: true,
                                    itemCount: 5,
                                    ratingWidget: RatingWidget(
                                        full: Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 2,
                                        ),
                                        half: Icon(
                                          Icons.star_half,
                                          color: Colors.orange,
                                          size: 2,
                                        ),
                                        empty: Icon(
                                          Icons.star,
                                          color: Colors.grey[300],
                                          size: 2,
                                        )),
                                    onRatingUpdate: (value) {
                                      setState(() {
                                        _ratingValue = value;
                                      });
                                    }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 20,
              );
            },
          ),
        ),


      ]),
    );
  }
}
