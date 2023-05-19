import 'package:figma/logIn2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  _pageState createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 38),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 80),
                width: 100,
                height: 40,
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    'Yallow',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Let’s get started, what’s your name?',
              style: GoogleFonts.inter(fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Text(
              'Your Name',
              style: GoogleFonts.inter(fontSize: 36, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 400),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (Context) => loginttwo()));
              },
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
