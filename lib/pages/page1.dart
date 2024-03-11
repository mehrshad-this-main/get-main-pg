import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getstorgg/contexts/context.dart';

import '../controller/ctl.dart';

final funcontor = Get.put(Test());
GetStorage data = GetStorage();

// ignore: must_be_immutable
class Page1 extends StatefulWidget {
  final int prg;
  const Page1({
    super.key,
    required this.prg,
  });

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    var ins = widget.prg + 1;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(data.read(ins.toString()) == true){
            setinitialRoute(ins.toString());
                Get.toNamed(ins.toString());
                }else{
                   Get.snackbar('er', 'tesk not complito');
                }
           
        },
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "${funcontor.lis1[widget.prg.toString()]!.value}",
                ),
              ],
            ),
            InkWell(
              onTap: () {
                setinitialRoute('/');
                Get.toNamed('/');
              },
              child: const Icon(Icons.back_hand),
            ),
            Text(widget.prg.toString()),
            Text(
                "next page state: ${funcontor.lis1[ins.toString()]!.value.toString()}"),
                Text(data.read(ins.toString()).toString()),
            Checkbox(
              value: data.read(ins.toString()) ?? false,
              onChanged: ( value) {
                setState(() {
                  // var a = data.read(ins.toString());
                  
                  data.write(ins.toString(), funcontor.lis1[ins.toString()]!.value = !funcontor.lis1[ins.toString()]!.value ); 
                });
               
                // setState(() {
                //   funcontor.lis1[ins.toString()]!.value =
                //       !funcontor.lis1[ins.toString()]!.value;
                // }); 
                // updatav(ins.toString(), !funcontor.lis1[ins.toString()]!.value);
              },
            ),
          ],
        ),
      ),
    );
  }
  // void updatav (var key , var nvalue){
  //   funcontor.lis1[key]!.value = nvalue;
  //   data.write(key, nvalue); 
  // }
}
