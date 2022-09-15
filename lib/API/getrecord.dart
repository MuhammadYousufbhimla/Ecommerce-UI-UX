import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:http/http.dart' as http;
getmembers() async {
  // DialogHelper.showLoading('Fetching data');

  try {
    final response = await http
        .get(Uri.parse('https://demo.code7labs.com/api/moneytree-backend/bankdetails.php'));
    var jsonData = jsonDecode(response.body);
    print(" Json Data ${jsonData.length}");
    print(" vList final object${jsonData}");
    // print(jsonData[0][0]['service_name']);
    List<Calldata> calldatascreen = [];
    // print(" calldatascreen : $calldatascreen");
    for (var i = 0; i < jsonData.length; i++) {
      Calldata servvices = Calldata(
        // userId: jsonData[i]['userId'],
        id: jsonData[i]['id'],
        bank_title: jsonData[i]['bank_title'],
        acc_ttitle: jsonData[i]['acc_ttitle'],
        acc_no: jsonData[i]['acc_no'],
         acc_iban: jsonData[i]['acc_iban'],
       
       
      );
      calldatascreen.add(servvices);
    }

    print("List final your userId is ${calldatascreen[1].id}");
    // DialogHelper.hideLoading();
    // EasyLoading.dismiss();

    return calldatascreen;
  } catch (e) {
    print("error catch $e");
  }
}

class Calldata {
   String? id;
 String?  bank_title;
  String? acc_ttitle;
  String? acc_no;
  String? acc_iban;


  Calldata({ this.id,this.bank_title, this.acc_ttitle, this.acc_no ,this.acc_iban});
}