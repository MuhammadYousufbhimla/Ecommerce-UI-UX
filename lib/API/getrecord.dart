import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
getmembers() async {
  // DialogHelper.showLoading('Fetching data');

  try {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var jsonData = jsonDecode(response.body);
    print(" Json Data ${jsonData.length}");
    print(" vList final object${jsonData}");
    // print(jsonData[0][0]['service_name']);
    List<Calldata> calldatascreen = [];
    // print(" calldatascreen : $calldatascreen");
    for (var i = 0; i < jsonData.length; i++) {
      Calldata servvices = Calldata(
        id: jsonData[i]['id'],
        title: jsonData[i]['title'],
        body: jsonData[i]['body'],
       
      );
      calldatascreen.add(servvices);
    }

    print("List final is ${calldatascreen[1].title}");
    // DialogHelper.hideLoading();
    // EasyLoading.dismiss();

    return calldatascreen;
  } catch (e) {
    print("   error catch $e");
  }
}

class Calldata {
  String? id;
  String? title;
  String? body;


  Calldata({this.id, this.title, this.body, });
}