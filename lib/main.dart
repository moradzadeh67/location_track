import 'package:flutter/material.dart';

import 'counter.dart' show Counter;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ChangeNotifier(create: (_) => Counter(0), child:const MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}


