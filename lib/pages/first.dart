import 'package:ecommerce/Auth/login.dart';
import 'package:ecommerce/pages/four.dart';
import 'package:ecommerce/pages/second.dart';
import 'package:ecommerce/pages/third.dart';
import 'package:flutter/material.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: PageView(

      children: [
      
    
       Stack(
        children: [
      Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/first.jpg"),
                fit: BoxFit.cover,
              ),
            ),
         ),
       
         Padding(
           padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05,left: MediaQuery.of(context).size.width*0.43),
           child: Image.asset('assets/splash.png',width: MediaQuery.of(context).size.width*0.18,)
         ),
         Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.52,left: MediaQuery.of(context).size.width*0.12),
           child: Row(
             children: [
               Text("NO",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white,),),
               Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.05)),           
               Text("1",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),),
     
             
             ],
             
           ),
           
     
         ),
           Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.58,left: MediaQuery.of(context).size.width*0.10),
             child: Text("Featured",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 4, 2, 115))),
           ),
            Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.65,left: MediaQuery.of(context).size.width*0.10),
             child: Text("Tailored",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 4)),
           ),
             Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.74,left: MediaQuery.of(context).size.width*0.04),
             child: Text("Jennifer Kingsley exploring the\nnew range of winter fashion wear.",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white,)),
           ),
           Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.85,left: MediaQuery.of(context).size.width*0.10),
             child: Container(
                     width: MediaQuery.of(context).size.width*0.85,
                     height: MediaQuery.of(context).size.height*0.10,
               decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: MediaQuery.of(context).size.width*0.01,
                  color: Colors.white
                
                )
                
               ),
               child: Center(child: Text("Shop Now",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w500,color: Colors.white,),)),
             ),
           )
        ],
       ),
     Second(),
     third(),
     four(),
    Login()
      ]
      
     )
    );
  }
}