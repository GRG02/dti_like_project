// ignore_for_file: prefer_const_constructors

import 'package:dti_like_project/views/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/bg_welcome.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Text(
                'DTI Cake Shop',
                style: GoogleFonts.kanit(
                    fontSize: MediaQuery.of(context).size.height * 0.05,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              CircularProgressIndicator(
                color: Colors.pink,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Text(
                'ร้านเค้กในตำนาน',
                style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
              Text(
                'Created by: RatipongDTI-SAU',
                style: GoogleFonts.itim(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
