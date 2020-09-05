import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rtm/bloc/navigation_bloc.dart';
import 'package:flutter_rtm/bloc/navigation_event.dart';
import 'package:flutter_rtm/utils/constants.dart';

class ResidentsScreen extends StatefulWidget {
  @override
  _ResidentsScreenState createState() => _ResidentsScreenState();
}

class _ResidentsScreenState extends State<ResidentsScreen> {
  ScrollController _scrollController = ScrollController();

  Widget _buildElasticPanel(int index) {
    return Container(
      height: 130,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(2,3),
            color: Colors.black26,
            blurRadius: 15
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(50)
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: AssetImage(resident[selectIndex][index].image),
                    height: 94,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 15,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resident[selectIndex][index].name,
                    style: kTextStyle(
                        color: Colors.black38,
                        size: 16,
                        fontWeight: FontWeight.w500
                    ),
                    maxLines: 3,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    resident[selectIndex][index].direction,
                    style: kTextStyle(
                        color: Theme.of(context).primaryColor,
                        size: 18,
                        fontWeight: FontWeight.w800
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    resident[selectIndex][index].telNum,
                    style: kTextStyle(
                        color: Colors.black38,
                        size: 16,
                        fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        BlocProvider.of<NavigationBloc>(context).add(DirectionsClickedEvent());
        return false;
      },
      child: Container(
        height: double.infinity,
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 40, top: 40),
          itemCount: resident[selectIndex].length,
          scrollDirection: Axis.vertical,
          controller: _scrollController,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) => _buildElasticPanel(index),
        ),
      ),
    );
  }
}
