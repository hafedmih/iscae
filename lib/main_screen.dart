import 'package:flutter/material.dart';

import 'home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController editingControllerUsername = TextEditingController();
TextEditingController editingControllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  child: Center(
                child: 
                Column(children: [
                CircleAvatar(
               radius: 50.0,
               backgroundImage: AssetImage("images/rim_logo.png"),
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
                   Card(
      child: ListTile(
        leading:   Icon(Icons.mail ,color: Colors.teal,),
        title: TextFormField(
          controller: editingControllerUsername,
        )
        ),),
         Card(
      child: ListTile(
        leading:   Icon(Icons.password ,color: Colors.teal,),
        title: TextFormField(
          controller: editingControllerPassword,
          obscureText: true,)),),
 Container(
 width: double.infinity,
 margin: const EdgeInsets.symmetric(horizontal: 50,vertical: 20),
 child: TextButton(
   style: TextButton.styleFrom(
    primary: Colors.blue,
    backgroundColor: Colors.teal
  ),
  onPressed: () {
    String username= editingControllerUsername.text;
        String password =editingControllerPassword.text;
         if(username == "admin" && password =="1234"){

         // Navigator.pushNamed(context, '/second');
         
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          
        print("ok");  

         }else {
           print("ko");  

         }
         
     },
  child: Text('Connecter',style: TextStyle(color: Colors.white),),
),
 )

      
                
                  
                ],)
              ),
),
 );
  }
}


  
