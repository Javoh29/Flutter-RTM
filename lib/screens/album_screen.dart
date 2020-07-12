import 'package:flutter/material.dart';
import 'package:flutter_rtm/utils/constants.dart';
import 'package:flutter_rtm/widgets/card_scroll_widget.dart';

class AlbumScreen extends StatefulWidget{
  @override
  _AlbumScreenState createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  var currentPage = albumModel.length - 1.0;
  int position = 21;

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: albumModel.length - 1);
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(top: 65),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10),
                child: Text(
                  albumModel[position].title,
                  style: kTextStyle(
                      color: Theme.of(context).primaryColor,
                      size: 24,
                      fontWeight: FontWeight.w600
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Stack(
                children: <Widget>[
                  CardScrollWidget(currentPage, albumModel),
                  Positioned.fill(
                    child: PageView.builder(
                      itemCount: albumModel.length,
                      controller: controller,
                      reverse: true,
                      onPageChanged: (index){
                        setState(() {
                          position = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return Container();
                      },
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
                child: Text(
                  albumModel[position].info,
                  style: kTextStyle(
                    color: Colors.grey[500],
                    size: 16,
                    fontWeight: FontWeight.w400,
                    height: 1.3
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          )
        ),
      ),
    );
  }
}