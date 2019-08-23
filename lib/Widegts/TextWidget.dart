import 'package:flutter_web/material.dart';
import 'package:flutterwebproject/Utils/AppConstants.dart';
import 'package:flutterwebproject/Utils/Utils.dart';
import 'package:flutterwebproject/Widegts/ContainerWidget.dart';
class TextWidget extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<TextWidget>{
  @override

  Widget build(BuildContext context){
    return Container(
      height: Utils.height,
      width: Utils.width,
      child: Padding(
        padding:  EdgeInsets.only(top: Utils.height/60,bottom: Utils.height/60),
        child: Column(children: <Widget>[

          Column(children: <Widget>[
            Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("I'm ", style: TextStyle(fontSize: Utils.width/60, fontWeight: FontWeight.bold, color: AppConstants.color4),),
                Text("Mr. BANSAL", style: TextStyle(fontSize: Utils.width/60, fontWeight: FontWeight.bold, color: AppConstants.color5),),
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("As a ", style: TextStyle( color: AppConstants.color4, fontSize: Utils.width/80),),
                Text("Web Developer",style: TextStyle(color: AppConstants.color5,fontSize: Utils.width/80),),
              ],),
          ],),//,),
          Padding(
            padding:  EdgeInsets.only(top: Utils.height/8),
            child: Column(children: <Widget>[
              Align(alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ContainerWidget("images/aboutme.png", "ABOUT ME"),
                    ContainerWidget("images/c.png", "MY RESUME"),
                  ],),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ContainerWidget("images/portfolio.png", "MY PORTFOLIO"),
                     ContainerWidget("images/message.png", "CONTACT ME"),
                  ],),
              ),
            ],),
          ),
        ],),
      ),
    );

  }
}