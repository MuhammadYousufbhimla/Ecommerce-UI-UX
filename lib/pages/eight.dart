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
      Cart(context, ImageList[0]),
      Cart(context, ImageList[1]),
      Cart(context, ImageList[2]),
      Cart(context, ImageList[3]),
      Cart(context, ImageList[4]),
      Cart(context, ImageList[5]),
      Cart(context, ImageList[6]),
      paymentbtn(context)
    ]));
  }

  Widget Cart(context, leadImage) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.29,
      margin: EdgeInsets.only(
        left: MediaQuery.of(context).size.height * 0.02,
        right: MediaQuery.of(context).size.height * 0.02,
        top: MediaQuery.of(context).size.height * 0.02,
        bottom: MediaQuery.of(context).size.height * 0.02,
      ),
      padding: EdgeInsets.only(
        left: MediaQuery.of(context).size.height * 0.02,
        right: MediaQuery.of(context).size.height * 0.02,
        top: MediaQuery.of(context).size.height * 0.02,
        bottom: MediaQuery.of(context).size.height * 0.02,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(0, 3),
            )
          ]),
      child: ListTile(
        minLeadingWidth: 10,
        leading: Image.asset(
          leadImage,
        ),
        title: Text(
          "Hawaian Shirt",
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        subtitle: Text(
          "SANDY WILLIAM",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
        ),
        trailing: Text(
          "Rs:499.9",
          style: TextStyle(
              color: Color.fromARGB(255, 39, 0, 231),
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget paymentbtn(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.height * 0.02,
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.02,
          ),
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.height * 0.02,
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.02,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),

            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.2),
            //     spreadRadius: 2,
            //     blurRadius: 2,
            //     offset: Offset(0, 3),
            //   )
            // ]
          ),
          child: Text(
            "Total : Rs 5000",
            style: TextStyle(
              color: Color.fromARGB(255, 39, 0, 231),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.40,
          // height: MediaQuery.of(context).size.height * 0.20,
          margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.height * 0.02,
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.02,
          ),
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.height * 0.02,
            right: MediaQuery.of(context).size.height * 0.02,
            top: MediaQuery.of(context).size.height * 0.02,
            bottom: MediaQuery.of(context).size.height * 0.02,
          ),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 39, 0, 231),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(0, 3),
                )
              ]),
          child: Text(
            "Pay Now",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          ),
        )
      ],
    );
  }
}
