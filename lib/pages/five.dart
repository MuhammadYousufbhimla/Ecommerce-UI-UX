import 'package:flutter/material.dart';

class Five extends StatefulWidget {
  const Five({Key? key}) : super(key: key);

  @override
  State<Five> createState() => _FiveState();
}

class _FiveState extends State<Five> with SingleTickerProviderStateMixin {
  TabController? _tabController;
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
      body: Stack(children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height*0.45,
                  width:MediaQuery.of(context).size.width*0.99,
                  child: Image.asset(
                    "assets/four.jpg",
                    fit: BoxFit.fill,
                  )),
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 08.0, top: 04),
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
                    padding: const EdgeInsets.only(left: 10.0, top: 02),
                    child: Text("Rs.25.99",
                        style: TextStyle(
                            color: Color.fromARGB(255, 39, 0, 231),
                            fontSize: 18,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              )),
              TabBar(
                unselectedLabelColor: Colors.black,
                labelColor: Colors.grey,
                labelStyle: TextStyle(letterSpacing: 2),
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
                  children: [Info(), Mesurement()],
                  controller: _tabController,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.80),
          child: Divider(
            color: Colors.grey,
            thickness: 1,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.82,
          left: MediaQuery.of(context).size.width * 0.04,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Total",
                style: TextStyle(color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text("Rs .25.99",
                    style: TextStyle(
                        color: Color.fromARGB(255, 39, 0, 231),
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
              ),
              Padding(
                padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.10),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.55,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 39, 0, 231),
                    borderRadius: BorderRadius.circular(13),
                    //     border: Border.all(
                    //       width: MediaQuery.of(context).size.width*0.01,
                    // color:Colors.lightBlue
                    //     )
                  ),
                  child: Center(
                      child: Text(
                    "Add to Bag",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
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
                  TextStyle(fontSize: 14, letterSpacing: 1, color: Colors.blue),
            ),
          ),
        ],
      ),
    ));
  }

  Widget Mesurement() {
    return ListView(children: [
      Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 05),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "WAIST",
                style: TextStyle(
                    color: Color.fromARGB(255, 83, 82, 82),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "LENGTH",
                style: TextStyle(
                    color: Color.fromARGB(255, 83, 82, 82),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "BREADTH",
                style: TextStyle(
                    color: Color.fromARGB(255, 83, 82, 82),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: EdgeInsets.only(left: 08, top: 06),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(05),
                    color: Color.fromARGB(255, 222, 243, 253)),
                child: Center(
                    child: Text(
                  "43",
                  style: TextStyle(),
                )),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(05),
                    color: Color.fromARGB(255, 222, 243, 253)),
                child: Center(
                    child: Text(
                  "34",
                  style: TextStyle(),
                )),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.22,
                height: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(05),
                    color: Color.fromARGB(255, 222, 243, 253)),
                child: Center(
                    child: Text(
                  "70",
                  style: TextStyle(),
                )),
              ),
            ],
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: EdgeInsets.only(left: 08, top: 08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Color:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              CircleAvatar1(context, Colors.brown),
              CircleAvatar1(context, Colors.green),
              CircleAvatar1(context, Colors.yellow),
              CircleAvatar1(context, Colors.purple),
            ],
          ),
        ),
      ),
      Container(
        child: Padding(
          padding: EdgeInsets.only(left: 08, top: 07),
          child: Text(
            "Do you want to use this material?",
            style: TextStyle(
                fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      Container(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 39, 0, 231),
                  borderRadius: BorderRadius.circular(08),
                ),
                child: Center(
                    child: Text(
                  "Yes",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  //  color: Color.fromARGB(255, 39, 0, 231),
                  borderRadius: BorderRadius.circular(08),
                ),
                child: Center(
                    child: Text(
                  "No",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )),
              ),
            ),
          ],
        ),
      )
    ]);
  }

  Widget CircleAvatar1(context, Color) {
    return Container(
        child: CircleAvatar(
      backgroundColor: Color,
      radius: 20,
    ));
  }
}
