import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

class Five extends StatefulWidget {
  const Five({Key? key}) : super(key: key);

  @override
  State<Five> createState() => _FiveState();
}

class _FiveState extends State<Five>   with SingleTickerProviderStateMixin{
  TabController ? _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
                 
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              }),
          backgroundColor: Colors.white,
          title: Text(
            'Home Screen',
            style: TextStyle(color: Colors.black),
          ),
        ),
      body: Stack(
        children: [

         Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
               
                height: 350,
                width: 400,
                child:Image.asset("assets/four.jpg",fit: BoxFit.cover,) 
               
              ),
              Container(
               child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
      Padding(
                        padding: const EdgeInsets.only(left: 08.0,top: 04),
                        child: Text(
                          "Perfect Situation Purple Long Sleeve dress",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color.fromARGB(255, 127, 125, 125)),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(left: 10.0,top: 04),
                        child: Text("Rs.25.99",
                            style: TextStyle(
                                color: Color.fromARGB(255, 39, 0, 231),
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                ],
               )
               
         
              ),
              TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.grey,
                labelStyle:  TextStyle(letterSpacing:2),
                tabs: [
                  Tab(
                   text: 'INFO',
                  ),
                  
                  Tab(
                    text: 'MEASUREMENTS',
                  )
                ],
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Info(),
                    
                     Text('Person')],
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ),
        ]
      ),
      
    );
    
  }
  Widget Info(){
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(left:8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text("MATERIALAS",style: TextStyle(fontWeight: FontWeight.w500,letterSpacing: 1,color: Colors.black),),
         Padding(
           padding: const EdgeInsets.only(top:5.0),
           child: Text("AS SEEN IN REDBOOK! You'll be printed and ready in the Perfect In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.  " ,style: TextStyle(fontSize: 15,letterSpacing: 2, color: Color.fromARGB(255, 113, 111, 111)),),
         )
        ],
      ),
    )
  );


}

}
    
//     MaterialApp(
    
//       debugShowCheckedModeBanner: false,
//       home: 
//        Scaffold(
           
//         // backgroundColor: Color.fromARGB(255, 165, 234, 201),
//         appBar: AppBar(
                 
//           leading: IconButton(
//               icon: Icon(Icons.arrow_back),
//               color: Colors.black,
//               onPressed: () {
//                 Navigator.pop(context);
//               }),
//           backgroundColor: Colors.white,
//           title: Text(
//             'Home Screen',
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//         body: Stack(
//           children: [
//             Positioned(
//               height: 400,
//               width: 360,
//               child: Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage("assets/four.jpg"),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//                 top: MediaQuery.of(context).size.height * 0.55,
//                 child: Container(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10.0),
//                         child: Text(
//                           "Perfect Situation Purple Long Sleeve dress",
//                           style: TextStyle(
//                               letterSpacing: 1,
//                               fontSize: 16,
//                               color: Color.fromARGB(255, 127, 125, 125)),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 10.0),
//                         child: Text("Rs.25.99",
//                             style: TextStyle(
//                                 color: Color.fromARGB(255, 39, 0, 231),
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500)),
//                       ),
                        
//                     ],
//                   ),
//                 )
//                 ),
//                 //  DefaultTabController(
//                 //   length: 2,
//                 //   child: Column(children: [TabBar(
//                 //       unselectedLabelColor: Colors.black,
//                 //       labelColor: Colors.red,
//                 //       tabs: <Widget>[
//                 //         Tab(
//                 //           icon: Icon(Icons.people),
//                 //         ),
//                 //         Tab(
//                 //           icon: Icon(Icons.person),
//                 //         )
//                 //       ],controller: _tabController,
//                 //       indicatorSize: TabBarIndicatorSize.tab,
//                 //     ),TabBarView(
//                 //       children: <Widget>[Text('people'), Text('Person')],
//                 //       controller: _tabController,
//                 //     ),
                      
//                 //     ])
//                 //     )
//           ],
//         ),
//            ),
//     );
//   }
// }
