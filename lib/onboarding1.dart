import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_talent/onboarding2.dart';

class onboarding1 extends StatefulWidget {
  const onboarding1({super.key});

  @override
  State<onboarding1> createState() => _onboarding1State();
}

class _onboarding1State extends State<onboarding1> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.width);
    print(size.height);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.1),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Local",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.acme(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                      ),
                    ),
                    Text(
                      "Talent",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.acme(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff5C6BC0),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  width: size.width * 0.8,
                  height: size.height * 0.4,
                  child: Image.asset(
                    'assets/img1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  'Track All The Local Jobs\nAt Your FingerTips',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.abel(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: size.width * 0.05),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => onboarding2(),
                  ),
                );
              },
              child: Container(
                width: size.width * 0.35,
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xff007aff),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Next ',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.acme(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
