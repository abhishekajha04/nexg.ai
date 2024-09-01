import 'package:flutter/material.dart';
import 'package:nexgai_website/about_us/about_us.dart';
import 'package:nexgai_website/contact_us/contact_us.dart';
import 'package:nexgai_website/footer/footer.dart';
import 'package:nexgai_website/home_page/home_page_body/home_page_body.dart';
import 'package:nexgai_website/our_services/our_services.dart';
import 'package:nexgai_website/utills/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexToColor("#FFFFFF"),
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: HomePageHeader(
                selectedIndex: _selectedIndex,
                onItemTapped: _onItemTapped,
              ),
            ),
            // Scrollable content
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [_getScreens(), const FooterMain()],
                ),
              ),
            ),
            // Transparent header
          ],
        ),
      ),
    );
  }

  Widget _getScreens() {
    switch (_selectedIndex) {
      case 0:
        return const HomePageBody();
      case 1:
        return const AboutUs();
      case 2:
        return const OurServices();
      case 4:
        return const ContactUsPage();
      default:
        return const HomePageBody();
    }
  }
}

class HomePageHeader extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const HomePageHeader({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  State<StatefulWidget> createState() {
    return HomePageHeaderState();
  }
}

class HomePageHeaderState extends State<HomePageHeader> {
  bool _isMenuExpanded = false;
  void _toggleMenu() {
    setState(() {
      _isMenuExpanded = !_isMenuExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      color: hexToColor('#E5EFFF'),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                width > 600 ? 60 : 15,
                width > 600 ? 25 : 15,
                width > 600 ? 60 : 15,
                width > 600 ? 25 : 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 100,
                ),
                const SizedBox(width: 30),
                if (width < 1200) const Spacer(flex: 1),
                if (width > 1200)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MenuText(
                        text: "Home",
                        selectedIndex: widget.selectedIndex,
                        index: 0,
                        onItemTapped: widget.onItemTapped,
                      ),
                      MenuText(
                        text: "About Us",
                        selectedIndex: widget.selectedIndex,
                        index: 1,
                        onItemTapped: widget.onItemTapped,
                      ),
                      MenuText(
                        text: "Our Services",
                        selectedIndex: widget.selectedIndex,
                        index: 2,
                        onItemTapped: widget.onItemTapped,
                      ),
                      MenuText(
                        text: "Contact Us",
                        selectedIndex: widget.selectedIndex,
                        index: 4,
                        onItemTapped: widget.onItemTapped,
                      ),
                    ],
                  ),
                if (width < 1200)
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: GestureDetector(
                            onTap: () {
                              _toggleMenu();
                            },
                            child: const Icon(Icons.menu_rounded),
                          ))),
              ],
            ),
          ),
          if (width < 1200)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: AnimatedCrossFade(
                duration: const Duration(milliseconds: 300),
                crossFadeState: _isMenuExpanded
                    ? CrossFadeState.showSecond
                    : CrossFadeState.showFirst,
                firstChild: Container(),
                secondChild: Column(
                  children: <Widget>[
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isMenuExpanded = !_isMenuExpanded;
                            });
                            widget.onItemTapped(0);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Home",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Book',
                                  color: widget.selectedIndex == 0
                                      ? hexToColor("#7854F7")
                                      : hexToColor("#BAB6B6"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: widget.selectedIndex == 0
                              ? hexToColor("#7854F7")
                              : hexToColor("#D9D9D9"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isMenuExpanded = !_isMenuExpanded;
                            });
                            widget.onItemTapped(1);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("About Us",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Book',
                                  color: widget.selectedIndex == 1
                                      ? hexToColor("#7854F7")
                                      : hexToColor("#BAB6B6"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: widget.selectedIndex == 1
                              ? hexToColor("#7854F7")
                              : hexToColor("#D9D9D9"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isMenuExpanded = !_isMenuExpanded;
                            });
                            widget.onItemTapped(2);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Our Services",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Book',
                                  color: widget.selectedIndex == 2
                                      ? hexToColor("#7854F7")
                                      : hexToColor("#BAB6B6"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: widget.selectedIndex == 2
                              ? hexToColor("#7854F7")
                              : hexToColor("#D9D9D9"),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _isMenuExpanded = !_isMenuExpanded;
                            });
                            widget.onItemTapped(4);
                          },
                          child: Container(
                            width: double.infinity,
                            height: 40,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Contact Us",
                                style: TextStyle(
                                  fontFamily: 'CircularStd-Book',
                                  color: widget.selectedIndex == 4
                                      ? hexToColor("#7854F7")
                                      : hexToColor("#BAB6B6"),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                )),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: widget.selectedIndex == 4
                              ? hexToColor("#7854F7")
                              : hexToColor("#D9D9D9"),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class MenuText extends StatefulWidget {
  final String text;
  final int selectedIndex;
  final int index;
  final Function(int) onItemTapped;

  const MenuText({
    super.key,
    required this.text,
    required this.selectedIndex,
    required this.index,
    required this.onItemTapped,
  });

  @override
  State<StatefulWidget> createState() {
    return _MenuTextState();
  }
}

class _MenuTextState extends State<MenuText> {
  bool _isHovered = false;
  final GlobalKey _textKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MouseRegion(
            onEnter: (event) => _onHover(true),
            onExit: (event) => _onHover(false),
            cursor: SystemMouseCursors.click,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: GestureDetector(
                onTap: () {
                  // Call the onItemTapped function with the index
                  widget.onItemTapped(widget.index);
                },
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: Text(
                    widget.text,
                    key: _textKey,
                    style: TextStyle(
                      fontFamily: 'CircularStd-Book',
                      color: _isHovered || widget.selectedIndex == widget.index
                          ? hexToColor("#7854F7")
                          : hexToColor("#BAB6B6"),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onHover(bool isHovered) {
    setState(() {
      _isHovered = isHovered;
    });
  }
}
