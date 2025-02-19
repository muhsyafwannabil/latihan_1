import 'package:flutter/material.dart';
import 'package:latihan_1/constants/colors.dart';
import 'package:latihan_1/gen/assets.gen.dart';
import 'package:latihan_1/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Timer untuk pindah ke HomeScreen setelah 3 detik
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Image.asset(
          Assets.images.image1.path,
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
