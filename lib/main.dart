import 'dart:async' show Timer;

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:ecommerce/pages/first.dart';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      debugShowCheckedModeBanner: false,
      home: new Scaffold(

        body: Center(
            child: AnimatedSplashScreen(
                duration: 2500,
                backgroundColor: Color.fromARGB(255, 38, 129, 203),
                splashTransition: SplashTransition.rotationTransition,
                splashIconSize: 300,
                splash: Container(
       
                  width: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/splash.png',
                    ),
                  )
                  
                  ),
                  // child:   Text(
                  //     "Welcome to next page \n Best of Luck",
               
                    
                  // )
                  ),
                
                nextScreen: First()
                // nextScreen: Home(),
                )),
      ),
    );
  }
}
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Ecommerce',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(),
//       builder: EasyLoading.init(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   void initState() {
//     super.initState();

//     Timer(
//         Duration(seconds: 5),
//         () => Navigator.of(context).pushReplacement(
//             MaterialPageRoute(builder: (BuildContext context) => First())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         fit: StackFit.expand,
//         children: <Widget>[
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [
//                 Colors.blue,
//                 Color.fromARGB(255, 8, 90, 157),
//               ]),
//               // color: Color.fromRGBO(10, 83, 144, 1)
//             ),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       ClipOval(
//                           clipBehavior: Clip.hardEdge,
//                           child: Image.asset(
//                             'assets/splash.png',
//                             width: MediaQuery.of(context).size.width * 0.30,
//                             height: MediaQuery.of(context).size.height * 0.20,
//                           )
//                           // child: Image.network('https://ae01.alicdn.com/kf/H756e861051b7417db7a5c6d37847aeben/Barber-Scissors-C1005-5-5-6-Engrave-Logo-Professional-Hairdressing-Scissors-Thinning-Shears-Hair-Cutting-Scissor.jpg_Q90.jpg_.webp',fit: BoxFit.fill,),
//                           ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         "TAILOR",
//                         style: TextStyle(
//                             letterSpacing: 2,
//                             wordSpacing: 1,
//                             color: Colors.white,
//                             fontSize: 24.0,
//                             fontWeight: FontWeight.w500),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 1,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     SizedBox(
//                       height: 15.0,
//                     ),
//                     Text(
//                       "Welcome to next page \n Best of Luck",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: MediaQuery.of(context).size.width * 0.045,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
