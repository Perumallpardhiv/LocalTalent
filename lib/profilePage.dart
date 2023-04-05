import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class profilePage extends StatefulWidget {
  const profilePage({super.key});

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Text(
              'My Account',
              style: GoogleFonts.acme(
                fontSize: 34,
                fontWeight: FontWeight.w400,
                color: Color(0xff000000),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'PROFILE',
              style: GoogleFonts.acme(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0x993c3c43),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.transparent),
                borderRadius: BorderRadius.circular(14),
                color: Color.fromARGB(255, 248, 240, 240),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  width: size.width,
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Username',
                        style: GoogleFonts.acme(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0x4c3c3c43),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Name',
                        style: GoogleFonts.acme(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0x4c3c3c43),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Surname',
                        style: GoogleFonts.acme(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0x4c3c3c43),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Email',
                        style: GoogleFonts.acme(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0x4c3c3c43),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Address',
                        style: GoogleFonts.acme(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0x4c3c3c43),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              'SETTINGS',
              style: GoogleFonts.acme(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0x993c3c43),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.transparent),
                borderRadius: BorderRadius.circular(14),
                color: Color.fromARGB(255, 248, 240, 240),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  width: size.width,
                  height: size.height * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Appearance:',
                            style: GoogleFonts.acme(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000),
                            ),
                          ),
                          Container(
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: TabBar(
                              isScrollable: true,
                              controller: tabController,
                              indicator: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 35),
                              tabs: [
                                Tab(
                                  child: Text(
                                    "Light",
                                    style: GoogleFonts.acme(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "Dark",
                                    style: GoogleFonts.acme(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1,
                            color: Colors.black.withOpacity(0.1),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Logout',
                        style: GoogleFonts.acme(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff007aff),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 5, bottom: 5),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.transparent),
                borderRadius: BorderRadius.circular(14),
                color: Color.fromARGB(255, 248, 240, 240),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Upload Image',
                            style: GoogleFonts.acme(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff007aff),
                            ),
                          ),
                          Container(
                            height: 30,
                            child: RawMaterialButton(
                              fillColor: Colors.grey,
                              focusColor: Colors.grey.withOpacity(0.2),
                              onPressed: () {},
                              child: Text(
                                "Upload",
                                style: GoogleFonts.acme(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              shape: StadiumBorder(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 5),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.transparent),
                borderRadius: BorderRadius.circular(4),
                color: Colors.black,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                child: Container(
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ratings',
                            style: GoogleFonts.acme(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff007aff),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
