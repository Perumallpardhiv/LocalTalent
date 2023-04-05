import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class conditions extends StatefulWidget {
  const conditions({super.key});

  @override
  State<conditions> createState() => _conditionsState();
}

class _conditionsState extends State<conditions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfff2f2f7),
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Conditions of Use",
          style: GoogleFonts.acme(
            fontSize: 17,
            fontWeight: FontWeight.w400,
            color: Color(0xff000000),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'OK',
              textAlign: TextAlign.right,
              style: GoogleFonts.acme(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: Color(0xff007aff),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\n1) Disclaimer. \n\nThese Terms of Service are only for demo purpose. Do not use them for a real project. These are only an example of  the legally binding terms and conditions for the use of the app and the Services.\n\n2) Acceptance of Terms.\n\n1. By registering for and/or using the Services in any manner, including but not limited to visiting or browsing the app, you agree to these Terms of Service (including, for clarity, the Privacy Policy and, where applicable, the EU Data Processing Addendum) and all other operating rules, policies and procedures that may be published from time to time on the Site by us, each of which is incorporated by reference and each of which may be updated from time to time without notice to you.\n\n2. Certain of the Services may be subject to additional terms and conditions specified by us from time to time; your use of such Services is subject to those additional terms and conditions, which are incorporated into these Terms of Service by this reference.\n\n3. These Terms of Service apply to all users of the Services, including, without limitation, users who are contributors of content, information, and other materials or services, registered or otherwise.\n',
                style: GoogleFonts.acme(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
