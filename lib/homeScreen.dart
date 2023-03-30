import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List filters = [
    'Design',
    'Location',
    'Remote',
    'Company',
    'Type of job',
    'Salary range'
  ];
  List filterChoosen = [];
  List Recommended = [
    {
      "image": "assets/amazon.png",
      "job": "Amazon Delivery",
      "company": "Amazon",
      "place": "Gaziabad, UP",
      "postedDate": "1 days ago",
      "platform": "Linkdein"
    },
    {
      "image": "assets/amazon.png",
      "job": "Amazon Delivery",
      "company": "Amazon",
      "place": "Gaziabad, UP",
      "postedDate": "1 days ago",
      "platform": "Linkdein"
    },
    {
      "image": "assets/amazon.png",
      "job": "Amazon Delivery",
      "company": "Amazon",
      "place": "Gaziabad, UP",
      "postedDate": "1 days ago",
      "platform": "Linkdein"
    },
    {
      "image": "assets/amazon.png",
      "job": "Amazon Delivery",
      "company": "Amazon",
      "place": "Gaziabad, UP",
      "postedDate": "1 days ago",
      "platform": "Linkdein"
    },
    {
      "image": "assets/amazon.png",
      "job": "Amazon Delivery",
      "company": "Amazon",
      "place": "Gaziabad, UP",
      "postedDate": "1 days ago",
      "platform": "Linkdein"
    },
    {
      "image": "assets/amazon.png",
      "job": "Amazon Delivery",
      "company": "Amazon",
      "place": "Gaziabad, UP",
      "postedDate": "1 days ago",
      "platform": "Linkdein"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/profile1.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello',
                          style: GoogleFonts.acme(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                        Text(
                          'Gagan Jha.',
                          style: GoogleFonts.acme(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0x1e767680),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Icon(
                        Icons.search,
                        color: Color(0x993c3c43),
                        size: 20,
                      ),
                    ),
                    Text(
                      'Position, location or keywords ',
                      style: GoogleFonts.acme(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0x993c3c43),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 45,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          width: 40,
                          decoration: BoxDecoration(
                            color: filterChoosen.length > 0
                                ? Color(0x4c007aff)
                                : Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: GestureDetector(
                            onTap: filterChoosen.length > 0
                                ? () {
                                    filterChoosen.clear();
                                    setState(() {});
                                  }
                                : null,
                            child: Center(
                              child: filterChoosen.length == 0
                                  ? Icon(Icons.filter_list_outlined)
                                  : Icon(Icons.close),
                            ),
                          ),
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        primary: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: filters.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: GestureDetector(
                              onTap: () {
                                filterChoosen.contains(filters[index])
                                    ? filterChoosen.remove(filters[index])
                                    : filterChoosen.add(filters[index]);
                                setState(() {});
                              },
                              child: Container(
                                width: 80,
                                decoration: BoxDecoration(
                                  color: filterChoosen.contains(filters[index])
                                      ? Color(0x4c007aff)
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: filterChoosen.contains(filters[index])
                                      ? null
                                      : Border.all(color: Colors.grey),
                                ),
                                child: Center(
                                  child: Text(
                                    filters[index],
                                    style: GoogleFonts.acme(
                                      color:
                                          filterChoosen.contains(filters[index])
                                              ? Colors.black
                                              : Colors.grey,
                                      fontSize: 12,
                                      fontWeight:
                                          filterChoosen.contains(filters[index])
                                              ? FontWeight.w700
                                              : FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommended for you",
                    style: GoogleFonts.acme(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    // seeallWec (491:1781)
                    'See all',
                    style: GoogleFonts.acme(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff007aff),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: SizedBox(
                height: 260,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: true,
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemCount: Recommended.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: 160,
                            decoration: BoxDecoration(
                              color: index % 5 == 0
                                  ? Color(0xffFFB240).withOpacity(0.2)
                                  : index % 5 == 1
                                      ? Color(0xff007AFF0).withOpacity(0.05)
                                      : index % 5 == 2
                                          ? Color(0xff999999).withOpacity(0.1)
                                          : index % 5 == 3
                                              ? Colors.yellow.withOpacity(0.3)
                                              : Colors.red.withOpacity(0.15),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 30,
                                      backgroundColor: Colors.white,
                                      backgroundImage: AssetImage(
                                        Recommended[index]["image"],
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 12.0),
                                      child: Text(
                                        Recommended[index]['job'],
                                        style: GoogleFonts.acme(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.0),
                                      child: Text(
                                        Recommended[index]['company'],
                                        style: GoogleFonts.acme(
                                          fontSize: 16.5,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 5.0),
                                      child: Text(
                                        Recommended[index]['place'],
                                        style: GoogleFonts.acme(
                                          fontSize: 16.5,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0x993c3c43),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      Recommended[index]['postedDate'],
                                      style: GoogleFonts.acme(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0x993c3c43),
                                      ),
                                    ),
                                    Text(
                                      Recommended[index]['platform'],
                                      style: GoogleFonts.acme(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0x993c3c43),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
