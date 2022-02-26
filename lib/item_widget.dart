import 'package:flutter/material.dart';

class item extends StatelessWidget {
  String ? text;
  IconData ? myicon;
  
   item({
    this.text,this.myicon
   }) : super();
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
      child: Card(
        child: ListTile(
          leading:   Icon(myicon,color: Colors.teal,),
          title: Text(text!,style: TextStyle(color: Colors.teal),),
          
        ),
      )
      );
  }
}
