import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:getstorgg/pages/page1.dart';


import 'controller/ctl.dart';
Test test = Test();

void main() async {
  await GetStorage.init();
  // test.getlist();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  GetStorage data = GetStorage();

final funcontor = Get.put(Test());
@override
  void initState() {
    super.initState();
   
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: data.read('boxa') ?? '/',
      routes: funcontor.proutes,
      
      
    );
  }
}
