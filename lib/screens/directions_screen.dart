import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rtm/bloc/navigation_bloc.dart';
import 'package:flutter_rtm/bloc/navigation_event.dart';
import 'package:flutter_rtm/utils/constants.dart';

class DirectionsScreen extends StatefulWidget{
  @override
  _DirectionsScreenState createState() => _DirectionsScreenState();
}

class _DirectionsScreenState extends State<DirectionsScreen> {

  Widget _cardsView(int index){
    return GestureDetector(
      onTap: (){
        selectIndex = index;
        BlocProvider.of<NavigationBloc>(context).add(ResidentsClickedEvent());
      },
      child: Container(
        height: 180,
        width: double.infinity,
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(directionModel[index].image), fit: BoxFit.cover,),
          boxShadow: [
            BoxShadow(
              offset: Offset(2,3),
              color: Colors.black26,
              blurRadius: 10
            )
          ]
        ),
        child: Text(
          directionModel[index].title,
          style: kTextStyle(
            size: 30,
            fontWeight: FontWeight.w800
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: directionModel.length,
          itemBuilder: (context, index){
            return _cardsView(index);
          }
        ),
      )
    );
  }
}
