import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rtm/utils/constants.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  PageController _pageController;

  int _current = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  _cardPages(int index){
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, widget){
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
          child: Container(
            height: Curves.easeInOut.transform(value) * 180.0,
            width: Curves.easeInOut.transform(value) * (MediaQuery.of(context).size.width - 50),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(2, 2),
                  blurRadius: 10,
                )
              ]
            ),
            child: widget,
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image(
          image: AssetImage(homePhotos[index]),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  callback(int index){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 210.0,
                  initialPage: 5,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _){
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                items: homePhotos.map((e){
                  return Builder(
                    builder: (BuildContext context){
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 2),
                                blurRadius: 10,
                              )
                            ]
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image(
                            image: AssetImage(e),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList()
              )
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(right: 15, left: 15, bottom: 20, top: 5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(2, 2),
                      blurRadius: 10,
                    )
                  ]
              ),
              child: Text(
                rtmText,
                style: kTextStyle(
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w500,
                  size: 14,
                  height: 1.5
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
