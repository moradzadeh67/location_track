import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:location_track/providers/point_provider.dart';
import 'package:location_track/router/app_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PointProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Point App',
        theme: ThemeData(
          fontFamily: 'IranSans',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),


        supportedLocales: const [
          Locale('en'),
          Locale('fa'),
        ],
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: const Locale('fa'),

        initialRoute: AppRouter.pointListRoute,
        onGenerateRoute: AppRouter.onGenerateRoute,
      ),
    );
  }
}
