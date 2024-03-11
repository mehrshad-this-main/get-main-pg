import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../home.dart';
import '../pages/page1.dart';

GetStorage db = GetStorage();
class Test extends GetxController {
 Map lis1 = {
    '0': true.obs,
    '1': true.obs,
    '2': false.obs,
    '3': false.obs,
    '4': false.obs,
    '5': false.obs,
    '6': false.obs,
  };

 
void getlist(){
  lis1.forEach((var key,var value) {
    lis1[key] = (db.read(key)); 
  });
}
  

  Map<String, Widget Function(BuildContext)> proutes = <String, WidgetBuilder>{
    '/': (context) => const Home(),
    '0': (context) => const Page1(prg: 0,),
    '1': (context) => const Page1(prg: 1,),
    '2': (context) => const Page1(prg: 2,),
    '3': (context) => const Page1(prg: 3,),
  };
  
}

