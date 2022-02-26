import 'package:flutter/material.dart';

import 'item_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: 
                  Column(children: [
                  CircleAvatar(
                 radius: 50.0,
                 backgroundImage: AssetImage("images/myimg.jpg"),
),
                  
                  Text("Sidi Mohamed",style: TextStyle(fontSize: 30,color: Colors.white),),
                  Text("Flutter developer".toUpperCase(),style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    letterSpacing: 5
                    ),
                    
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      child: Divider(
                        thickness: 2,
                        
                        
                      ),
                    ),
                    item(myicon:Icons.phone ,text:"00 222 45 45 45 43"),
                    item(myicon: Icons.mail ,text: "mail@gmail.com"),
                  
                    
                  ],)
                ),
              ),
            ],
          ),
        ),
      );
    
  }
}


