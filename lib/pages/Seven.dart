import 'package:flutter/material.dart';

class Seven extends StatefulWidget {
  const Seven({Key? key}) : super(key: key);

  @override
  State<Seven> createState() => _SevenState();
}

class _SevenState extends State<Seven> {
  @override
  Widget build(BuildContext context) {
        return Scaffold(
           body: Stack(
            children: [
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
            ],
           ),
              )
           ])
        );
  }
}