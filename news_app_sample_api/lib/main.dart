import 'package:flutter/material.dart';
import 'package:news_app_sample_api/controller/homescreencontroler.dart';
import 'package:news_app_sample_api/view/homepage/homepage.dart';
import 'package:news_app_sample_api/view/splashscreen/splashscreen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      ),
    );
  }
}