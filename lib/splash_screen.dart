import 'dart:async';
import 'package:flutter/material.dart';

import 'wb_quotes_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(
      Duration(seconds: 5),
        ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => WBQuotesText()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(70), // Image radius
                  child: Image.asset('images/company_logo.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Invest in Yourself.',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20.0,
                      letterSpacing: 2.5,
                      color: Colors.red[900],
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
