import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.0),
            child: Lottie.asset('assets/lottieefiles/done.json', height: 250),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10),
            child: Text(
              "Payment Successsful",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "Your order will be ready in 5 days,\nincluding shiping,more details and\n optionsfor tracking will be sent to\n your mail ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "Thanks!!!",
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.70,
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
              "Continue Shopping",
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
            ),
          )
        ],
      )),
    ]));
  }
}
