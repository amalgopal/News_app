
import 'package:flutter/material.dart';
import 'package:news_app/screens/home_screen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    goToHome(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Image.asset('asset/image/Screenshot 2024-02-16 093432.png')),
    );
  }

  Future<void>goToHome(context)async{
   await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> ScreenHome()), (route) => false);
  }
}