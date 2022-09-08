import 'package:flutter/material.dart';

class Eight extends StatefulWidget {
  const Eight({Key? key}) : super(key: key);

  @override
  State<Eight> createState() => _SevenState();
}

class _SevenState extends State<Eight> {
  List ImageList = [
    'assets/Winter.png',
    'assets/summer.png',
    'assets/Winter1.png',
    'assets/Summer1.png',
    'assets/women.png',
    'assets/Winter.png',
    'assets/summer.png',
    'assets/Winter1.png',
  ];

  List Imagename = [
    'White Strap Pluge',
    'Child clothes',
    'Black Silk',
    'Paint coat',
    'Women grey Silk',
    'White Strap Pluge',
    'Child clothes',
    'Black Silk',
  ];
  // final List<Map> myProducts =
  //     List.generate(06, (index) => {"id": index, "name": "Product $index"})
  //         .toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.02,
            left: MediaQuery.of(context).size.height * 0.01,
            right: MediaQuery.of(context).size.height * 0.01,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
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
              hintText: 'Search Cart',
              contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 12.0),
              border: InputBorder.none,
            ),
          ),
        ),

        Cart()
        // Padding(padding: EdgeInsets.only(top: 15.0)),
        // Container(
        //     child: GridView.builder(
        //         physics: NeverScrollableScrollPhysics(),
        //         shrinkWrap: true,
        //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //           crossAxisCount: 2,
        //           // mainAxisSpacing: 04,
        //           // crossAxisSpacing: 05,
        //           mainAxisExtent: 250,
        //         ),
        //         itemCount: ImageList.length,
        //         // itemCount: myProducts.length,
        //         itemBuilder: (BuildContext ctx, index) {
        //           return Column(
        //             children: [
        //               Container(
        //                   height: MediaQuery.of(context).size.height * 0.29,
        //                   margin: EdgeInsets.only(
        //                       left: MediaQuery.of(context).size.height * 0.02,
        //                       right: MediaQuery.of(context).size.height * 0.02),
        //                   // alignment: Alignment.center,
        //                   decoration: BoxDecoration(
        //                       color: Colors.white,
        //                       borderRadius: BorderRadius.circular(10),
        //                       boxShadow: [
        //                         BoxShadow(
        //                           color: Colors.grey.withOpacity(0.2),
        //                           spreadRadius: 2,
        //                           blurRadius: 2,
        //                           offset: Offset(0, 3),
        //                         )
        //                       ]),
        //                   child: Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: [
        //                       Center(
        //                         child: Image.asset(
        //                           ImageList[index],
        //                           height:
        //                               MediaQuery.of(context).size.height * 0.22,
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: EdgeInsets.only(
        //                             left: MediaQuery.of(context).size.width *
        //                                 0.02),
        //                         child: Row(
        //                           mainAxisAlignment:
        //                               MainAxisAlignment.spaceBetween,
        //                           children: [
        //                             Text(
        //                               "Rs:499.9",
        //                               style: TextStyle(
        //                                   color:
        //                                       Color.fromARGB(255, 39, 0, 231),
        //                                   fontWeight: FontWeight.w500),
        //                             ),
        //                             Padding(
        //                               padding: EdgeInsets.only(right: 5.0),
        //                               child: Icon(
        //                                 Icons.favorite,
        //                                 color: Color.fromARGB(255, 39, 0, 231),
        //                               ),
        //                             )
        //                           ],
        //                         ),
        //                       ),
        //                       Padding(
        //                         padding: EdgeInsets.only(
        //                             left: MediaQuery.of(context).size.width *
        //                                 0.02),
        //                         child: Text(
        //                           Imagename[index],
        //                           style: TextStyle(color: Colors.grey),
        //                         ),
        //                       )
        //                       // Text(myProducts[index]["name"]),
        //                       // Padding(
        //                       //   padding: const EdgeInsets.only(top: 20.0),
        //                       //   child: Text(
        //                       //     "Rs:25.99",
        //                       //     style: TextStyle(
        //                       //       fontWeight: FontWeight.w500,
        //                       //       color: Color.fromARGB(255, 39, 0, 231),
        //                       //     ),
        //                       //   ),
        //                       // )
        //                     ],
        //                   )),
        //             ],
        //           );
        //         }))
      ]),
    );
  }

  Widget Cart() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.29,
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.height * 0.02,
          right: MediaQuery.of(context).size.height * 0.02),
      // alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3),
            )
          ]),
      child: Text("data"),
    );
  }
}
