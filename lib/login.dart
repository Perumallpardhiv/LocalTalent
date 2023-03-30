import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: const Color(0xffF2F2F7),
                      filled: true,
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      labelStyle: GoogleFonts.acme(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: const Color(0x4c3c3c43),
                      ),
                    ),
                    style: GoogleFonts.acme(
                      fontSize: 20,
                      height: 0.5,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      fillColor: const Color(0xffF2F2F7),
                      filled: true,
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      labelStyle: GoogleFonts.acme(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: const Color(0x4c3c3c43),
                      ),
                    ),
                    style: GoogleFonts.acme(
                      fontSize: 20,
                      height: 0.5,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            RawMaterialButton(
              constraints: BoxConstraints(minHeight: 40),
              onPressed: () {},
              fillColor: Color(0xff007aff),
              splashColor: Color(0xff007aff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.acme(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  'Forgot password?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.acme(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Remember',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.acme(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff007aff),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Don\'t have an account?',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.acme(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff000000),
                  ),
                ),
                SizedBox(width: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.acme(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff007aff),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
