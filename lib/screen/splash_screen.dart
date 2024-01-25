import 'package:firstapp/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
        return HomeScreen();
      }));
    });
  }

  /*
  push:
  HomeScreen
  Splash Screen

  HomeScreen
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.facebook_outlined,
              size: 60,
              color: Colors.blue,
            ),
            SizedBox(
              height: 50,
            ),
            LoadingAnimationWidget.prograssiveDots(
              size: 80,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
