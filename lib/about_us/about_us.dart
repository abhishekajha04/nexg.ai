import 'package:flutter/material.dart';
import 'package:nexgai_website/utills/constants.dart';
import 'package:nexgai_website/utills/utils.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        if (width > 1360) const AboutUsWeb(),
        if (width <= 1360) const AboutUsMobile(),
      ],
    );
  }
}

class AboutUsWeb extends StatefulWidget {
  const AboutUsWeb({super.key});

  @override
  State<AboutUsWeb> createState() => _AboutUsWebState();
}

class _AboutUsWebState extends State<AboutUsWeb> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextCenter(),
        Aboutus1(),
        Aboutus2(),
        AboutUs3(),
      ],
    );
  }
}

class TextCenter extends StatelessWidget {
  // Define a parameter with a default value

  // Constructor to initialize the parameter
  const TextCenter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: hexToColor('#D9E8FF'),
      height: 200,
      width: width,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'our portfolio',
            style: TextStyle(fontFamily: 'CircularStd-Book', fontSize: 13),
          ),
          Text(
            'Amazing Photo Gallery',
            style: TextStyle(
                fontFamily: 'CircularStd-Book',
                fontSize: 33,
                fontWeight: FontWeight.w700),
          ),
          Text(
            a1,
            style: TextStyle(fontFamily: 'CircularStd-Book', fontSize: 13),
          ),
          Text(
            a2,
            style: TextStyle(fontFamily: 'CircularStd-Book', fontSize: 13),
          ),
          Text(
            a3,
            style: TextStyle(fontFamily: 'CircularStd-Book', fontSize: 13),
          ),
          Text(
            a4,
            style: TextStyle(fontFamily: 'CircularStd-Book', fontSize: 13),
          ),
        ],
      ),
    );
  }
}

class TextCenter11 extends StatelessWidget {
  // Define a parameter with a default value

  // Constructor to initialize the parameter
  const TextCenter11({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: hexToColor('#D9E8FF'),
      height: 200,
      width: width,
      child: const Padding(
        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'our portfolio',
              style: TextStyle(fontFamily: 'CircularStd-Book', fontSize: 15),
            ),
            Text(
              'Amazing Photo Gallery',
              style: TextStyle(
                  fontFamily: 'CircularStd-Book',
                  fontSize: 33,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              a1,
              style: TextStyle(fontFamily: 'CircularStd-Book', fontSize: 13),
            ),
            Text(
              a2,
              style: TextStyle(fontFamily: 'CircularStd-Book', fontSize: 13),
            ),
            Text(
              a3,
              style: TextStyle(fontFamily: 'CircularStd-Book', fontSize: 13),
            ),
            Text(
              a4,
              style: TextStyle(fontFamily: 'CircularStd-Book', fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}

class Aboutus1 extends StatefulWidget {
  const Aboutus1({super.key});

  @override
  State<Aboutus1> createState() => _Aboutus1State();
}

class _Aboutus1State extends State<Aboutus1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: hexToColor('#D9E8FF'),
          height: 500,
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1100),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 219, 241, 245),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 400,
                        width: 500,
                        color: Colors.grey,
                        child: Image.asset(
                          'assets/images/istockphoto-1452604857-612x612.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome to the world of captivating web design!',
                              style: TextStyle(
                                color: hexToColor('#8B9CAD'),
                                fontFamily: 'CircularStd-Book',
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 32),
                            Text(
                              "I'm Jeffery Cannon",
                              style: TextStyle(
                                color: hexToColor('#0B2545'),
                                fontFamily: 'CircularStd-Book',
                                fontSize: 34,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              'A skilled web designer with a passion for creating visually stunning and user-friendly websites. '
                              'With a keen eye for detail and a commitment to excellence, I specialize in crafting online experiences '
                              'that leave a lasting impression. From concept to launch, I collaborate closely with clients to bring their '
                              'visions to life and ensure their digital presence stands out from the crowd. With my expertise and dedication, '
                              'I am here to help you elevate your online presence and make a powerful impact in the digital landscape.',
                              style: TextStyle(
                                color: hexToColor('#8B9CAD'),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'CircularStd-Book',
                              ),
                            ),
                            const SizedBox(height: 20),
                            Container(
                              width: 580,
                              height: 1,
                              color: hexToColor('#8B9CAD'),
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                InfoCard(
                                    number: '55',
                                    label2: '+',
                                    label: 'Completed Projects'),
                                SizedBox(width: 25),
                                InfoCard(
                                  number: '20',
                                  label: 'Happy Customers',
                                  label2: '+',
                                ),
                                SizedBox(width: 25),
                                InfoCard(
                                  number: '08',
                                  label: 'Years of Experience',
                                  label2: '+',
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Container(
                              width: 580,
                              height: 1,
                              color: hexToColor('#8B9CAD'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Aboutus2 extends StatelessWidget {
  const Aboutus2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(140, 0, 140, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [textimage()],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _buildCard(
                      height: 200,
                      title: 'Select',
                      iconData: Icons.grid_on,
                      description:
                          'Select reputable brands of top technology companies to synthesize into the list.',
                    ),
                    _buildCard(
                      height: 200,
                      title: 'Understand',
                      iconData: Icons.remove_red_eye,
                      description:
                          'Understand the users\' insights to bridge the gaps of software engineers and the market.',
                    ),
                  ],
                ),
                Row(
                  children: [
                    _buildCard(
                      height: 200,
                      title: 'Ensure',
                      iconData: Icons.thumb_up,
                      description:
                          'Ensure satisfied clients via: a top-notch outsourcing platform and tight collaboration between developers and end-users.',
                    ),
                    _buildCard(
                      height: 200,
                      title: 'Connect',
                      iconData: Icons.brightness_high,
                      description:
                          'Connect and provide the conduit between outsourcing suppliers and the businesses - clients across the globe.',
                    ),
                  ],
                ),
                Row(
                  children: [
                    _buildCard(
                      height: 210,
                      title: 'Classify',
                      iconData: Icons.check_circle,
                      description:
                          'Classify reputable technology companies by categories: programming language, location, experience, firm size, service pricing range, competence, services offered, business models...',
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Aboutus22 extends StatelessWidget {
  const Aboutus22({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [textimage()],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCard(
                      height: 200,
                      width: 220,
                      title: 'Select',
                      iconData: Icons.grid_on,
                      description:
                          'Select reputable brands of top technology companies to synthesize into the list.',
                    ),
                    _buildCard(
                      height: 200,
                      width: 220,
                      title: 'Understand',
                      iconData: Icons.remove_red_eye,
                      description:
                          'Understand the users\' insights to bridge the gaps of software engineers and the market.',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCard(
                      height: 220,
                      width: 220,
                      title: 'Ensure',
                      iconData: Icons.thumb_up,
                      description:
                          'Ensure satisfied clients via: a top-notch outsourcing platform and tight collaboration between developers and end-users.',
                    ),
                    _buildCard(
                      height: 220,
                      width: 220,
                      title: 'Connect',
                      iconData: Icons.brightness_high,
                      description:
                          'Connect and provide the conduit between outsourcing suppliers and the businesses - clients across the globe.',
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCard(
                      height: 260,
                      width: 220,
                      title: 'Classify',
                      iconData: Icons.check_circle,
                      description:
                          'Classify reputable technology companies by categories: programming language, location, experience, firm size, service pricing range, competence, services offered, business models...',
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class AboutUs3 extends StatelessWidget {
  const AboutUs3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hexToColor('#D9E8FF'),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCard(
                  fontsize: 14,
                  height: 240,
                  width: 360,
                  title: "Reputable",
                  iconData: Icons.grid_on,
                  description:
                      "Reputable technology companies worldwide offering software outsourcing services to be compiled and cataloged.",
                ),
                const SizedBox(
                  width: 50,
                ),
                _buildCard(
                  fontsize: 14,
                  height: 240,
                  width: 360,
                  title: "Prompt",
                  iconData: Icons.remove_red_eye,
                  description:
                      "Prompt responses & support from the team whenever users express concerns about the outsourcing platform.",
                ),
                const SizedBox(
                  width: 50,
                ),
                _buildCard(
                  fontsize: 14,
                  height: 240,
                  width: 360,
                  title: "Thorough",
                  iconData: Icons.thumb_up,
                  description:
                      "Thorough research and screening to compile lists of potential technology companies in the IT industry worldwide.",
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCard(
                  height: 240,
                  width: 330,
                  title: "Neutral",
                  iconData: Icons.brightness_high,
                  description:
                      "Neutral information and independent reviews about software outsourcing services and technology companies.",
                ),
                const SizedBox(
                  width: 50,
                ),
                _buildCard(
                  height: 240,
                  width: 330,
                  title: "Accurate",
                  iconData: Icons.check_circle,
                  description:
                      "Accurate information regarding technology companies offering services, prices, outsourcing platform and expertise to be sorted out.",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AboutUs33 extends StatelessWidget {
  const AboutUs33({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hexToColor('#D9E8FF'),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCard(
                  fontsize: 12,
                  height: 220,
                  width: 220,
                  title: "Reputable",
                  iconData: Icons.grid_on,
                  description:
                      "Reputable technology companies worldwide offering software outsourcing services to be compiled and cataloged.",
                ),
                _buildCard(
                  fontsize: 12,
                  height: 220,
                  width: 220,
                  title: "Prompt",
                  iconData: Icons.remove_red_eye,
                  description:
                      "Prompt responses & support from the team whenever users express concerns about the outsourcing platform.",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCard(
                  fontsize: 12,
                  height: 220,
                  width: 220,
                  title: "Thorough",
                  iconData: Icons.thumb_up,
                  description:
                      "Thorough research and screening to compile lists of potential technology companies in the IT industry worldwide.",
                ),
                _buildCard(
                  fontsize: 12,
                  height: 220,
                  width: 220,
                  title: "Neutral",
                  iconData: Icons.brightness_high,
                  description:
                      "Neutral information and independent reviews about software outsourcing services and technology companies.",
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildCard(
                  fontsize: 12,
                  height: 260,
                  width: 220,
                  title: "Accurate",
                  iconData: Icons.check_circle,
                  description:
                      "Accurate information regarding technology companies offering services, prices, outsourcing platform and expertise to be sorted out.",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget textimage() {
  return Container(
    constraints: const BoxConstraints(
      maxWidth: 500,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 90, 16, 16),
          child: Text(
            'What We Do',
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'CircularStd-Book',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Container(
            width: 210,
            height: 4,
            color: const Color.fromARGB(255, 55, 181, 245),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Software Outsourcing Journal has been launched to provide the conduit between outsourcing suppliers and the businesses - clients - across the globe, and to offer the world\'s leading aggregator marketplace for outsourcing.',
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'CircularStd-Book',
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'In addition, even if the partnership is not a significant software outsourcing or digital transformation one, a partner with complete experience and a stellar reputation, at the most affordable price, is ideal.',
            style: TextStyle(
              fontSize: 13,
              fontFamily: 'CircularStd-Book',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: SizedBox(
            height: 400,
            width: 500,
            child: Image.asset(
              'assets/images/istockphoto-1452604857-612x612.jpg',
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _buildCard(
    {required String title,
    final double fontsize = 12,
    final double fontsize1 = 20,
    final double width = 320,
    required final double height,
    required IconData iconData,
    required String description}) {
  return Card(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      width: width,
      height: height,
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Icon(
                  iconData,
                  size: 40,
                  color: const Color.fromARGB(255, 55, 181, 245),
                ),
                const SizedBox(height: 16),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontFamily: 'CircularStd-Book',
                    fontSize: fontsize1,
                  ),
                ),
                const SizedBox(height: 13),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: fontsize,
                fontFamily: 'CircularStd-Book',
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class InfoCard extends StatelessWidget {
  final String number;
  final String label;
  final String label2;

  const InfoCard(
      {super.key,
      required this.number,
      required this.label,
      required this.label2});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              number,
              style: TextStyle(
                color: hexToColor('#0B2545'),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              label2,
              style: const TextStyle(
                color: Color.fromARGB(255, 27, 17, 208),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Text(
          label,
          style: TextStyle(
            color: hexToColor('#8B9CAD'),
            fontSize: 13,
          ),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

class AboutUsMobile extends StatefulWidget {
  const AboutUsMobile({super.key});

  @override
  State<AboutUsMobile> createState() => _AboutUsMobileState();
}

class _AboutUsMobileState extends State<AboutUsMobile> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [TextCenter11(), AboutUS11(), Aboutus22(), AboutUs33()],
    );
  }
}

class AboutUS11 extends StatelessWidget {
  const AboutUS11({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hexToColor('#D9E8FF'),
      height: 890,
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 520, maxHeight: 850),
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
          decoration: BoxDecoration(
            color: hexToColor('#D9E8FF'),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color.fromARGB(255, 219, 241, 245),
                      ),
                      height: 400,
                      width: 400,
                      child: Image.asset(
                        'assets/images/istockphoto-1452604857-612x612.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          'Welcome to the world of captivating web design!',
                          style: TextStyle(
                            color: hexToColor('#8B9CAD'),
                            fontFamily: 'CircularStd-Book',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      Text(
                        "I'm Jeffery Cannon",
                        style: TextStyle(
                          color: hexToColor('#0B2545'),
                          fontFamily: 'CircularStd-Book',
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'A skilled web designer with a passion for creating visually stunning and user-friendly websites. '
                        'With a keen eye for detail and a commitment to excellence, I specialize in crafting online experiences '
                        'that leave a lasting impression. From concept to launch, I collaborate closely with clients to bring their '
                        'visions to life and ensure their digital presence stands out from the crowd. With my expertise and dedication, '
                        'I am here to help you elevate your online presence and make a powerful impact in the digital landscape.',
                        style: TextStyle(
                          color: hexToColor('#8B9CAD'),
                          fontFamily: 'CircularStd-Book',
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        width: 580,
                        height: 1,
                        color: hexToColor('#8B9CAD'),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InfoCard(
                              number: '55',
                              label2: '+',
                              label: 'Completed Projects'),
                          SizedBox(width: 25),
                          InfoCard(
                            number: '20',
                            label: 'Happy Customers',
                            label2: '+',
                          ),
                          SizedBox(width: 25),
                          InfoCard(
                            number: '08',
                            label: 'Years of Experience',
                            label2: '+',
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        width: 580,
                        height: 1,
                        color: hexToColor('#8B9CAD'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
