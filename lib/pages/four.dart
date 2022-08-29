import 'package:flutter/material.dart';

class four extends StatefulWidget {
  const four({Key? key}) : super(key: key);

  @override
  State<four> createState() => _FirstState();
}

class _FirstState extends State<four> {
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
                image: AssetImage("assets/thread.jpg"),
                fit: BoxFit.cover,
              ),
            ),
         ),
       
         Padding(
           padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.05,left: MediaQuery.of(context).size.width*0.43),
           child: Image.asset('assets/splash.png',width: MediaQuery.of(context).size.width*0.18,)
         ),
     
          //   Padding(
          //         padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.65,left: MediaQuery.of(context).size.width*0.10),
          //    child: Text("Tailored",style: TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white,letterSpacing: 4)),
          //  ),
           Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.73,left: MediaQuery.of(context).size.width*0.07),
             child: Container(
                     width: MediaQuery.of(context).size.width*0.90,
                     height: MediaQuery.of(context).size.height*0.08,
               decoration: BoxDecoration(
                
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: MediaQuery.of(context).size.width*0.01,
                  color: Colors.white
                
                )
                
               ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                  Image.asset('assets/insta.png',height: 40,color: Colors.white,),
                 Text("Continue with instagram",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white,),),
               ],
             )),
             ),
          
             Padding(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.83,left: MediaQuery.of(context).size.width*0.07),
             child: Text("By clicking this button you agree to our\nteam of services and privacy policy..",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white,)),
           ),
          
        ],
       ),
    
      ]
      
     )
    );
  }
}