import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstorgg/contexts/context.dart';
import 'package:getstorgg/controller/ctl.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
  
}
final coonty = Get.put(Test());

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 6,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index ) {
          final mun = coonty.lis1;
          final String spa = index.toString();

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Myw(
              ppg: index.toString(),
              colora: Colors.blue.shade200,
              pagelf: index.toString(),
              pgname: index.toString(),
               bol: mun[spa]!.value,
            ),
          );
        },
      ),
    );
  }
}
