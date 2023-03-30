import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_talent/auth.dart';

class onboarding2 extends StatefulWidget {
  const onboarding2({super.key});

  @override
  State<onboarding2> createState() => _onboarding2State();
}

class _onboarding2State extends State<onboarding2> {
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
                    'assets/img2.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: size.width * 0.7),
                  child: Text(
                    'Start appliying and get a Local Job Now!',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.acme(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 16),
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xff007aff),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Center(
                  child: Text(
                    'Connect with Facebook',
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
          Text(
            "or",
            textAlign: TextAlign.center,
            style: GoogleFonts.acme(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              color: Color(0x993c3c43),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.width * 0.05),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: size.width * 0.35,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xfff2f2f7),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'Back',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.acme(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: size.width * 0.05),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => auth(),
                      ),
                    );
                  },
                  child: Container(
                    width: size.width * 0.35,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Color(0xfff2f2f7),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'Sign In/Up',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.acme(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
