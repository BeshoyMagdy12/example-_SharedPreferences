import 'package:example_sharedpreferences/Feteures/Presentioan/view/home_screen.dart';
import 'package:example_sharedpreferences/core/utility/cashe_helper.dart';
import 'package:flutter/material.dart';

Future <void> main(List<String> args)async {
  WidgetsFlutterBinding.ensureInitialized();
 await CasheHelper.casheinitialization();
  runApp( MyApp());
}



class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeScreen(),
    );
  }
}