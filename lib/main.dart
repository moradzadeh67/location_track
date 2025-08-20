import 'package:flutter/material.dart';
import 'package:location_track/providers/point_provider.dart';
import 'package:location_track/router/app_router.dart';
import 'package:provider/provider.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PointProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: AppRouter.pointListRoute,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}


