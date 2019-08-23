import 'package:flutter_web/material.dart';
import 'package:flutterwebproject/Utils/AppConstants.dart';
import 'package:flutterwebproject/Utils/Utils.dart';

import 'Widegts/TextWidget.dart';

void main() => runApp(MaterialApp(home: MyApp(),
  debugShowCheckedModeBanner: false,));

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}
class _State extends State<MyApp>{
  @override

  Widget build(BuildContext context){
    Utils.height=MediaQuery.of(context).size.height;
    Utils.width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: Utils.height,
        width: Utils.width,
        color: AppConstants.backgroundColor,
        child:
        Padding(padding: EdgeInsets.only(top: Utils.height/20,left: Utils.width/30, right: Utils.width/30, bottom: Utils.height/20),
          child:   Container(
              height: Utils.height*80,
              width: Utils.width*80,
              color: AppConstants.color2,
              child: Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(color: AppConstants.color3,),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    height: Utils.height,
                    width: Utils.width,
                    //margin: EdgeInsets.only(top: Utils.blockSizeVertical/30),
                    child: TextWidget(),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage("images/james.jpg"),
                            fit: BoxFit.fill
                        )),),
                ),
              ],)
          ), ),
      ),
    );
  }
}