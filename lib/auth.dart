import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_talent/login.dart';
import 'package:local_talent/register.dart';

class auth extends StatefulWidget {
  const auth({super.key});

  @override
  State<auth> createState() => _authState();
}

class _authState extends State<auth> with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(size.width);
    print(size.height);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Container(
                    height: size.height * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: TabBar(
                            padding: EdgeInsets.all(2),
                            controller: tabController,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.black,
                            indicator: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            indicatorColor: Colors.white,
                            labelStyle: GoogleFonts.acme(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff000000),
                            ),
                            tabs: [
                              Tab(
                                text: 'Register',
                              ),
                              Tab(
                                text: 'Login',
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: tabController,
                            children: [
                              register(),
                              login(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
