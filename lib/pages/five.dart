import 'package:flutter/material.dart';

class Five extends StatefulWidget {
  const Five({Key? key}) : super(key: key);

  @override
  State<Five> createState() => _FiveState();
}

class _FiveState extends State<Five> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 165, 234, 201),
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
          Positioned(
         
            height: 400,
            width:360,
            child: 
 Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/four.jpg"),
              fit: BoxFit.cover,
            ),
          ),
       ),
          )
        ],
      ),
    );
  }
}
