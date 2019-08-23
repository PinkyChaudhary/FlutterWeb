import 'package:flutter_web/material.dart';
import 'package:flutterwebproject/Utils/AppConstants.dart';
import 'package:flutterwebproject/Utils/Utils.dart';

class ContainerWidget extends StatefulWidget {

  String url;
  String txt;
  ContainerWidget(this.url, this.txt);
  @override
  _State createState() => _State();
}
class _State extends State<ContainerWidget>{

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: Utils.width/50,top: Utils.height/20,  ),
//margin:EdgeInsets.only(top: Utils.blockSizeVertical/40,) ,
      //child: GestureDetector(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 2,
        child: Container(
          // margin: EdgeInsets.only(left: Utils.width/50,top: Utils.height/20,  ),
          height: Utils.height/4,
          width: Utils.width/4,
          color: AppConstants.color3,
          child: Center(
            child: Column(children: <Widget>[
              Padding(padding: EdgeInsets.only(top: Utils.height/40),
                child: Container(
                  height: Utils.height/8,
                  width: Utils.width/8,

                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(widget.url),
                      )),

                ),),

              Text(widget.txt, style: TextStyle(color: AppConstants.color4,fontSize: Utils.width/100),),
            ],),
          ),),
      ),

      // ),
    );
  }
}