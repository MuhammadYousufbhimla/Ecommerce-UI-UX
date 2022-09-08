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
          Lottie.asset('assets/lottieefiles/done1.json', height: 20),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.45),
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
          )
        ],
      )),
    ]));
  }
}
