import 'package:flutter/material.dart';

class Six extends StatefulWidget {
  const Six({Key? key}) : super(key: key);

  @override
  State<Six> createState() => _SixState();
}

class _SixState extends State<Six> with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     
      body: Stack(children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.02,
              
              left: MediaQuery.of(context).size.height * 0.01,
              right: MediaQuery.of(context).size.height * 0.01,
            ),
          
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),

            child: TextField(
              autofocus: true,
              style: TextStyle(fontSize: 15.0, color: Colors.black),
              decoration: InputDecoration(
                filled: false,
                suffixIcon: Icon(Icons.search_rounded),
                fillColor: Colors.black,
                hintText: 'Search Location',
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 12.0),
                border: InputBorder.none,
              ),
            ),
          ),
       
              Padding(
                padding:  EdgeInsets.only(top:60.0),
                child: TabBar(
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.grey,
                  labelStyle: TextStyle(letterSpacing: 2),
                  tabs: [
                    Tab(
                      text: 'MEN',
                    ),
                    Tab(
                      text: 'WOMEN',
                    ),
                     Tab(
                      text: 'CHILD',
                    ),
                  ],
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [Info(),Info(),Info()],
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ),
       
      
      ]),
    );
    // Scaffold(
    //   body:
    //   Column(
    //     children: [
    //       Container(
    //         margin: EdgeInsets.only(
    //           top: MediaQuery.of(context).size.height * 0.02,
    //           bottom: MediaQuery.of(context).size.height * 0.90,
    //           left: MediaQuery.of(context).size.height * 0.01,
    //           right: MediaQuery.of(context).size.height * 0.01,
    //         ),
          
    //         decoration: BoxDecoration(
    //           color: Colors.white,
    //           borderRadius: BorderRadius.circular(15),
    //           boxShadow: [
    //             BoxShadow(
    //               color: Colors.grey.withOpacity(0.2),
    //               spreadRadius: 5,
    //               blurRadius: 7,
    //               offset: Offset(0, 3), // changes position of shadow
    //             ),
    //           ],
    //         ),

    //         child: TextField(
    //           autofocus: true,
    //           style: TextStyle(fontSize: 15.0, color: Colors.black),
    //           decoration: InputDecoration(
    //             filled: false,
    //             suffixIcon: Icon(Icons.search_rounded),
    //             fillColor: Colors.black,
    //             hintText: 'Search Location',
    //             contentPadding:
    //                 const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 12.0),
    //             border: InputBorder.none,
    //           ),
    //         ),
    //       ),
    //       Container(
    //         child:    TabBar(
    //             unselectedLabelColor: Colors.black,
    //             labelColor: Colors.grey,
    //             labelStyle: TextStyle(letterSpacing: 2),
    //             tabs: [
    //               Tab(
    //                 text: 'INFO',
    //               ),
    //               Tab(
    //                 text: 'MEASUREMENTS',
    //               )
    //             ],
    //             controller: _tabController,
    //             indicatorSize: TabBarIndicatorSize.tab,
    //           ),
            
    //       ),
    //         TabBarView(
    //             children: [Info(), Info()],
    //             controller: _tabController,
    //           ),
    //     ],
    //   ),
        
    // );

    
   }
    Widget Info() {
    return Container(
        child: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "MATERIALAS",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
                color: Colors.black,
                fontSize: 16),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Text(
              "AS SEEN IN REDBOOK! You'll be printed and ready in the Perfect In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.  ",
              style:
                  TextStyle(fontSize: 15, letterSpacing: 2, color: Colors.blue),
            ),
          ),
        ],
    ),
     ));
  


}
}