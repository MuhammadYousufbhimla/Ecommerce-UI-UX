import 'dart:html';

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
    return Scaffold(
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
                    hintText: 'Search Location',
                    contentPadding: const EdgeInsets.only(
                        left: 14.0, bottom: 12.0, top: 12.0),
                    border: InputBorder.none,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 60.0),
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
                  children: [Info(), Info(), Info()],
                  controller: _tabController,
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
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.02,
        bottom: MediaQuery.of(context).size.height * 0.15,
        left: MediaQuery.of(context).size.height * 0.02,
        right: MediaQuery.of(context).size.height * 0.02,
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
      child: ListView(children: [
        ListTile(
            title: Text(
              "Sendy Williams",
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
            ),
            subtitle: Text(
              "FREELANCER TAILOR",
              style: TextStyle(color: Colors.grey, letterSpacing: 2),
            ),
            trailing: Icon(
              Icons.heart_broken,
              color: Colors.blue,
            ),
            leading: ClipOval(
              child: CircleAvatar(
                  child: Image.asset(
                'assets/first.jpg',
              )),
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
              "AS SEEN IN REDBOOK! You'll be printed and ready in the Perfect In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.  ",
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
              )),
        ),
        Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02)),
        Container(
          height: MediaQuery.of(context).size.height * 0.30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(
                "assets/four.jpg",
              ),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 05)),
        Row(
          children: [
            Padding(padding: EdgeInsets.only(right: 05)),
            Container(
              width: MediaQuery.of(context).size.width * 0.30,
              height: MediaQuery.of(context).size.height * 0.03,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(05),
                color: Color.fromARGB(255, 39, 0, 231),
              ),
              child: Text(
                "#Summer",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 05)),
            Container(
              width: MediaQuery.of(context).size.width * 0.30,
              height: MediaQuery.of(context).size.height * 0.03,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(05),
                color: Color.fromARGB(255, 39, 0, 231),
              ),
              child: Text(
                "#Winter",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.10)),
            Icon(
              Icons.share,
              color: Colors.grey,
            ),
            Text(
              "12k",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            )
          ],
        )
      ]),
    );
  }
}
