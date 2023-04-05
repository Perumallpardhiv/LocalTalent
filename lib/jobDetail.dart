import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class jobDetail extends StatefulWidget {
  const jobDetail({super.key});

  @override
  State<jobDetail> createState() => _jobDetailState();
}

List jobImages = [
  "assets/image1.png",
  "assets/image2.png",
  "assets/image3.png",
  "assets/image4.png",
  "assets/image5.png",
];

class _jobDetailState extends State<jobDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/photo.png',
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 25,
                  left: 15,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'assets/amazon.png',
                          height: 50,
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gagan Jha',
                              style: GoogleFonts.acme(
                                fontSize: 28,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffffffff),
                              ),
                            ),
                            Text(
                              'Salesman',
                              style: GoogleFonts.acme(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Gwalior, MP',
                style: GoogleFonts.acme(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Published 9h ago on: ',
                style: GoogleFonts.acme(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0x993c3c43),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5, bottom: 25),
              child: Image.asset(
                'assets/linkedin.png',
                height: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Text(
                'About me',
                style: GoogleFonts.acme(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Text(
                'What unites all Amazonians across teams and regions is that we are all striving to delight customers and make their lives easier. Our mission drives us to seek diverse perspectives.',
                style: GoogleFonts.acme(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: size.height * 0.32,
                width: size.width,
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: true,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: jobImages.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          jobImages[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                'Inventing things that were never thought possible isn\'t easy, but we embrace this challenge every day. Together, we are building the future, one innovative product, service, and idea at a time. Ready to embrace the challenge?\n\nCome build the future with us',
                style: GoogleFonts.acme(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 40, bottom: 20, left: 20, right: 20),
              child: Text(
                'About your future role',
                style: GoogleFonts.acme(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
              child: Text(
                'Amazon Alexa Shopping is seeking a talented, experienced, and self-directed UX Designer to define and drive the future of shopping at Amazon. The ideal candidate is an end-to-end UX Designer with strong visual design skills. They are passionate and have experience designing for new and ambiguous technologies. They have proven ability to motivate through vision and a desire to inspire and collaborate with a passionate team. You will drive your vision into solid design deliverables such as user interface designs for voice and screen, visual language, transitions, motions, videos and prototypes. You will collaborate closely with engineering, product management and marketing both inside our organisation, and with partner teams.\n\nNote on Location: Due to the pandemic, our team currently works remotely, however we will adopt a hybrid of in-office and at-home once Amazon welcomes employees back into the office.\n',
                style: GoogleFonts.acme(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Text(
                'Key job responsibilities\n',
                style: GoogleFonts.acme(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Text(
                'Develop the Alexa Shopping Design System from initial concept through to final implementation and management. Working with engineering and product in Alexa Shopping, as well as with partner teams across Amazon\nUse diverse inputs —e.g., product leadership, market analysis, customer feedback, metrics and usability findings — to identify and define new concepts and solutions to customer problems\nDesign and develop graphical user interfaces using code, video and prototyping tools\nCommunicate and specify design concepts, solutions, and needs to senior executives\nLead customer advocacy and integrate user research into your workflow\nContribute to the group\'s best practices for UI design while continually advocating design thinking, process, and craft throughout our organisation Partner with design technologists and development teams to build experiences and review finished interfaces (voice and screen) throughout the development lifecycle, maintaining a high bar for design and execution\nUse positive energy to maintain personal and team momentum\n\n',
                style: GoogleFonts.acme(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Text(
                'Basic Qualifications\n',
                style: GoogleFonts.acme(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Text(
                'Several years of experience as a UX/Interaction Designer or a similar role\nExcellent communication, presentation, and interpersonal skills including the ability to communicate design concepts clearly and persuasively across different audiences and varying levels of the organisation\nAn online portfolio or samples of work demonstrating strong visual communication, deep understanding of typography, colour, digital executions, and great user-centered design solutions\nStrong time management skills and ability to be self-directed as needed\nAbility to manage multiple tasks in a fast-paced environment\nExpertise with standard design and prototyping tools like Figma, Sketch and Adobe Creative Suite\nA bachelor\'s degree in design, interaction or a related UX degree, or commensurate industry experience\n\n\n',
                style: GoogleFonts.acme(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Text(
                'Preferred Qualifications\n',
                style: GoogleFonts.acme(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Text(
                'Excellent communication, presentation, and interpersonal skills including the ability to communicate design concepts clearly and persuasively across different audiences and varying levels of the organisation\nDemonstrated ability to successfully deliver professional projects of significant scope and high complexity\nExperience defining and driving a professional design system\nExperience planning and conducting user research\nExperience designing multimodal product experiences including voice UI\nExperience in communication design and information architecture\nExperience defining and driving creative solutions in new/ambiguous product territory\nExperience designing motion graphics or video editing\n\nAmazon is an equal opportunities employer. We believe passionately that employing a diverse workforce is central to our success. We make recruiting decisions based on your experience and skills. We value your passion to discover, invent, simplify and build. Protecting your privacy and the security of your data is a longstanding top priority for Amazon. Please consult our Privacy Notice (https://www.amazon.jobs/en/privacy_page) to know more about how we collect, use and transfer the personal data of our candidates.',
                style: GoogleFonts.acme(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RawMaterialButton(
                    fillColor: Color(0xff007aff),
                    focusColor: Color(0xff007aff),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 8),
                      child: Text(
                        "Apply with Linkedin",
                        style: GoogleFonts.acme(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: size.height * 0.25,
            ),
          ],
        ),
      ),
    );
  }
}
