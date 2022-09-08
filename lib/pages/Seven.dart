import 'package:flutter/material.dart';

class Seven extends StatefulWidget {
  const Seven({Key? key}) : super(key: key);

  @override
  State<Seven> createState() => _SevenState();
}

class _SevenState extends State<Seven> {
  final List<Map> myProducts =
      List.generate(06, (index) => {"id": index, "name": "Product $index"})
          .toList();
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
            borderRadius: BorderRadius.circular(18),
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
              hintText: 'Search Product1',
              contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 12.0),
              border: InputBorder.none,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 15.0)),
        Container(
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 04,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 200,
                ),
                itemCount: myProducts.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Column(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.20,
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.height * 0.02,
                              right: MediaQuery.of(context).size.height * 0.02),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(08)),
                          child: Column(
                            children: [
                              Image.asset('assets/Winter.png'),
                              // Text(myProducts[index]["name"]),
                              Text(
                                "Rs:25.99",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 39, 0, 231),
                                ),
                              )
                            ],
                          )),
                    ],
                  );
                }))
      ]),
    );
  }
}
