import 'package:flutter/material.dart';
import 'package:nexgai_website/utills/utils.dart';

class FooterMain extends StatefulWidget {
  const FooterMain({super.key});

  @override
  State<FooterMain> createState() => _FooterMainState();
}

class _FooterMainState extends State<FooterMain> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        if (width > 1001) const FooterWeB(),
        if (width <= 1001) const FooterMobile(),
      ],
    );
  }
}

class FooterWeB extends StatelessWidget {
  const FooterWeB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hexToColor('#7854F7'),
      height: 600,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '30 day money back guarantee',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.support_agent,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Support teams across the world',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
              Row(children: [
                Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  'Safe & Secure online payment',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ]),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            "assets/images/logo.png",
            width: 150,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 1080,
            height: 1,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Container(
              constraints: const BoxConstraints(maxHeight: 304, maxWidth: 900),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('WHO WE ARE',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 16),
                      Text('About',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Team',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Work With Us',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('WOOCOMMERCE',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 16),
                      Text('Features',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Payments',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Marketing',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Shipping',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Extension Store',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('eCommerce blog',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Development blog',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Ideas board',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Mobile App',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Community',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Style Guide',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Email Newsletter',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('OTHER PRODUCTS',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 16),
                      Text('Storefront',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('WooSlider',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Sensel',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Sensei Extensions',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('SUPPORT',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 16),
                      Text('Documentation',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Customizations',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Support Policy',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Contact',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('COVID-19 Resources',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Privacy Notice for',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('California Users',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('WE RECOMMEND',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 16),
                      Text('WooExperts',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Hosting Solutions',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Pre-sales FAQ',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Success Stories',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Design Feedback Group',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: hexToColor('#7854F7'),
      height: 600,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '30 day money back guarantee',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(
                    Icons.support_agent,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Support teams across the world',
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(children: [
                Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                SizedBox(width: 8),
                Text(
                  'Safe & Secure online payment',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              ]),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Image.asset(
            "assets/images/logo.png",
            width: 100,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 1080,
            height: 1,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
            child: Container(
              constraints: const BoxConstraints(maxHeight: 304, maxWidth: 900),
              child: const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('WHO WE ARE',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(height: 16),
                          Text('About',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Team',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Work With Us',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('SUPPORT',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(height: 16),
                          Text('Documentation',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Customizations',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Support Policy',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Contact',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('COVID-19 Resources',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Privacy Notice for',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('California Users',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('WOOCOMMERCE',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      SizedBox(height: 16),
                      Text('Features',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Payments',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Marketing',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Shipping',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Extension Store',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('eCommerce blog',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Development blog',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Ideas board',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Mobile App',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Community',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Style Guide',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                      SizedBox(height: 8),
                      Text('Email Newsletter',
                          style: TextStyle(fontSize: 10, color: Colors.white)),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('OTHER PRODUCTS',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(height: 16),
                          Text('Storefront',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('WooSlider',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Sensel',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Sensei Extensions',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('WE RECOMMEND',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          SizedBox(height: 16),
                          Text('WooExperts',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Hosting Solutions',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Pre-sales FAQ',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Success Stories',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Design Feedback Group',
                              style:
                                  TextStyle(fontSize: 10, color: Colors.white)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
