import 'package:flutter/material.dart';
import 'package:news_app_sample_api/view/homepage/homepage.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) =>NewsHomePage()),
        (route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    "https://cdn.jim-nielsen.com/ios/512/news-break-local-breaking-2018-09-12.png?rf=1024",
                  ),
                  fit: BoxFit.fill),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("NEWS HUB", style: TextStyle(color:Colors.white,fontSize: 26,fontWeight: FontWeight.w900),),
                  ),
                  
        ),
      ),
    );
  }
}
