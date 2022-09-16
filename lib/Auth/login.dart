import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _FirstState();
}

class _FirstState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Stack(children: [
      Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.35,
            top: MediaQuery.of(context).size.width * 0.20),
        child: ClipOval(
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              'assets/splash.png',  color: Color.fromARGB(255, 39, 0, 231),
              width: MediaQuery.of(context).size.width * 0.33,
             
            )),
      ),
      Padding(
        padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.35,
            top: MediaQuery.of(context).size.width * 0.55),
        child: Text(
          "1-TAILOR",
          style: TextStyle(
              fontSize: 20,
              letterSpacing: 4,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 39, 0, 231),),
        ),
      ),
      // Main Container 
      Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.70),
        child: Container(
     

          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.01,
            bottom: MediaQuery.of(context).size.height * 0.04,
            left: MediaQuery.of(context).size.height * 0.01,
            right: MediaQuery.of(context).size.height * 0.01,
          ),

         

          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 165, 163, 163).withOpacity(0.2),

                spreadRadius: 6,

                blurRadius: 7,

                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.height * 0.04,
                  right: MediaQuery.of(context).size.height * 0.04,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 216, 216),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  textAlign: TextAlign.center,
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                  decoration: InputDecoration(
                    filled: false,
                    prefixIcon: Icon(Icons.person_add),
                    hintText: 'Your Email',
                    border: InputBorder.none,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.height * 0.04,
                  right: MediaQuery.of(context).size.height * 0.04,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 219, 216, 216),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  autofocus: false,
                  style: TextStyle(fontSize: 15.0, color: Colors.black),
                  decoration: InputDecoration(
                    filled: false,
                    prefixIcon: Icon(Icons.password_sharp),
                    hintText: 'Password',
                    border: InputBorder.none,
                  ),
                ),
              ),
               Container(
                width: MediaQuery.of(context).size.width*0.35,
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.02,
            top:      MediaQuery.of(context).size.height * 0.01,
                bottom: MediaQuery.of(context).size.height * 0.01,
            
            ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.height * 0.02,
                  right: MediaQuery.of(context).size.height * 0.02,
                ),
                decoration: BoxDecoration(
   color: Color.fromARGB(255, 39, 0, 231),
                  borderRadius: BorderRadius.circular(08),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                
                ),
                child: Center(child: Text("Login ",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 18),)),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Divider(
                  color: Colors.grey,
                  thickness: 2,
                  height: 5,
                 ),
               ),
              
               Center(child: Text("OR",style: TextStyle(fontSize: 18),)),
                Container(
                width: MediaQuery.of(context).size.width*0.60,
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.02,
            top:      MediaQuery.of(context).size.height * 0.01,
                bottom: MediaQuery.of(context).size.height * 0.01,
            
            ),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.01,
                  left: MediaQuery.of(context).size.height * 0.02,
                  right: MediaQuery.of(context).size.height * 0.02,
                ),
                decoration: BoxDecoration(
                 color: Color.fromARGB(255, 39, 0, 231),
                  borderRadius: BorderRadius.circular(08),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                
                ),
                child: Center(child: Text("Login with Phone",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 18),)),
               ),
               Padding(padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.10)),
              Center(child: Text("Create account",style: TextStyle(fontSize: 20),))
            ],
          ),
        ),
      )
    ]));
  }
}
