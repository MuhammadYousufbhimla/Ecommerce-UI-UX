import 'package:flutter/material.dart';

class Nine extends StatefulWidget {
  const Nine({Key? key}) : super(key: key);

  @override
  State<Nine> createState() => _SevenState();
}

class _SevenState extends State<Nine> {
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
    ]));
  }
}
