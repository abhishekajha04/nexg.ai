import 'package:flutter/material.dart';
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
      children: [Aboutus1(), Aboutus2()],
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
          color: const Color(0xFFf0f4ff),
          height: 600,
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 1050),
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: hexToColor('#D9E8FF'),
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
                        width: 400,
                        color: Colors.grey,
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
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(height: 32),
                            Text(
                              "I'm Jeffery Cannon",
                              style: TextStyle(
                                color: hexToColor('#0B2545'),
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
    return Padding(
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
                    title: 'Select',
                    iconData: Icons.grid_on,
                    description:
                        'Select reputable brands of top technology companies to synthesize into the list.',
                  ),
                  _buildCard(
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
                    title: 'Ensure',
                    iconData: Icons.thumb_up,
                    description:
                        'Ensure satisfied clients via: a top-notch outsourcing platform and tight collaboration between developers and end-users.',
                  ),
                  _buildCard(
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
          padding: EdgeInsets.fromLTRB(16, 140, 16, 16),
          child: Text(
            'What We Do',
            style: TextStyle(fontSize: 35),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Software Outsourcing Journal has been launched to provide the conduit between outsourcing suppliers and the businesses - clients - across the globe, and to offer the world\'s leading aggregator marketplace for outsourcing.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'In addition, even if the partnership is not a significant software outsourcing or digital transformation one, a partner with complete experience and a stellar reputation, at the most affordable price, is ideal.',
            style: TextStyle(fontSize: 16),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(17, 0, 0, 0),
          child: Container(
            height: 400,
            width: 400,
            color: Colors.grey,
          ),
        ),
      ],
    ),
  );
}

Widget _buildCard(
    {required String title,
    required IconData iconData,
    required String description}) {
  return Card(
    child: Container(
      width: 320,
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Icon(iconData, size: 40),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 14),
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
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              label2,
              style: const TextStyle(
                color: Color.fromARGB(255, 27, 17, 208),
                fontSize: 22,
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
    return Container(
      color: const Color(0xFFf0f4ff),
      height: 850,
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 520, maxHeight: 850),
          padding: const EdgeInsets.all(30),
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
                        color: Colors.grey,
                      ),
                      height: 400,
                      width: 400,
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
