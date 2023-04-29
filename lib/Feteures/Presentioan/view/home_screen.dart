import 'dart:io';
import 'package:example_sharedpreferences/core/utility/cashe_helper.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

final controller =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
              //  CasheHelper.getDataString!=null?Text(CasheHelper.getDataString(key: 'name').toString()):Text(''),
                TextField(
                  controller: controller,
                  onSubmitted: (value) {
                    debugPrint("onsup ${value}");
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                OutlinedButton(
                  onPressed: ()async {
                   await CasheHelper.setDataString(key:'name', value: controller.text);
                  },
                  child: const Text('Sava Name'),
                ),
                OutlinedButton(
                  onPressed: () {
                    debugPrint(CasheHelper.getDataString(key:'name'));
                  },
                  child: const Text('Get Name'),
                ),
                OutlinedButton(
                  onPressed: () {
                    CasheHelper.deleteData(key: 'name');
                  },
                  child: const Text('Delete Name'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

 
}
