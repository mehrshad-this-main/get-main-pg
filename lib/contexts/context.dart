import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controller/ctl.dart';

final funcontor = Get.put(Test());
GetStorage data = GetStorage();

// in cod marbot be data base bray set kardane initialRoute 
void setinitialRoute(String pagename) async {
  data.write('boxa', pagename);
}

class Myw extends StatelessWidget {
  final bool bol;
  final String ppg, pgname, pagelf;
  final Color colora;
  const Myw({
    super.key,
    required this.ppg,
    required this.colora,
    required this.pagelf,
    required this.pgname,
    required this.bol
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (bol == true) {
          setinitialRoute(pgname);
          Get.toNamed(pgname);
        }else{
          Get.snackbar('er', 'tesk not complito');
        }
      },
      child: Container(
        color: colora,
        child: Center(
            child: Text(
          ppg,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
