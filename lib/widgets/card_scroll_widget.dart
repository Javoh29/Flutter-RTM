import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_rtm/models/album_model.dart';

// ignore: must_be_immutable
class CardScrollWidget extends StatelessWidget {
  var currentPage;
  var padding = 20;
  var verticalInset = 30;
  var cardAspectRatio = 12 / 16;
  List<AlbumModel> list;

  CardScrollWidget(this.currentPage, this.list);

  @override
  Widget build(BuildContext context) {
    return new AspectRatio(
      aspectRatio: cardAspectRatio * 1.18,
      child: LayoutBuilder(builder: (context, constraints) {
        var width = constraints.maxWidth;
        var height = constraints.maxHeight;

        var safeWidth = width - 2 * padding;
        var safeHeight = height - 2 * padding;

        var heightOfPrimaryCard = safeHeight;
        var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

        var primaryCardLeft = safeWidth - widthOfPrimaryCard;
        var horizontalInset = primaryCardLeft / 2;

        List<Widget> cardList = new List();

        for (var i = 0; i < list.length; i++) {
          var delta = i - currentPage;
          bool isOnRight = delta > 0;

          var start = padding +
              max(
                  primaryCardLeft -
                      horizontalInset * -delta * (isOnRight ? 15 : 1),
                  0.0);

          var cardItem = Positioned.directional(
            top: padding + verticalInset * max(-delta, 0.0),
            bottom: padding + verticalInset * max(-delta, 0.0),
            start: start,
            textDirection: TextDirection.rtl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(3.0, 6.0),
                      blurRadius: 10.0
                  )
                ]),
                child: AspectRatio(
                  aspectRatio: cardAspectRatio,
                  child: Image.asset(list[i].image, fit: BoxFit.cover),
                ),
              ),
            ),
          );
          cardList.add(cardItem);
        }
        return Stack(
          children: cardList,
        );
      }),
    );
  }
}
