import 'package:botchat/Bot.dart';
import 'package:botchat/Call.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart'; 

class BoardScreen extends StatelessWidget {
 @override

 Widget build(BuildContext context) {
   return Scaffold(
      
     // appBar: AppBar( title: Text('MileBot'),backgroundColor: Color(0xFF4DB6AC),),
      backgroundColor: Colors.teal.shade50,
      
      body: SafeArea(
        bottom: false,
        child: Stack( 
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/images/onboarding_illustration.png', 
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 9,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Bienvenido a ConsultBot',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(
                      height: null,
                    ),
                    Text(
                      'Selecciona la opción que deseas realizar',
                      style: TextStyle(
                      fontSize: 16,
                      color: Colors.black45,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Bot(),
                          ),
                        );
                      },
                      color: Colors.orange,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Consulta con nuestro asistente ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Call(),
                          ),
                        );
                      },
                      color: Colors.orange,
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'Contactanos a nuestra central',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ]
                ),
              ),
            ),
            
          ],
        ),           
      ),
   ) ;
 }

}

