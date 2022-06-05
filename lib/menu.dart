import 'package:flutter/material.dart';
import 'package:rolex_ui/gradient.dart';
import 'package:rolex_ui/watch1.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset('images/mainmenu.png'),
                      ),
                      Image.asset('images/Decorative.png'),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset('images/search.png'),
                      )
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 74,
                  decoration: BoxDecoration(
                      border: Border(
                    top: BorderSide(width: 1.0, color: Color(0xff987952)),
                    bottom: BorderSide(width: 1.0, color: Color(0xff987952)),
                  )),
                  child: Center(
                    child: GradientText(
                      'ROLEX WATCHES',
                      fontsize: 27,
                      gradient: LinearGradient(
                          colors: [Color(0xffEEDABC), Color(0xff987952)]),
                      fontfamily: 'Cinzel',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, left: 24, right: 24, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'The Collection',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'ReadexPro',
                            color: Colors.white),
                      ),
                      GradientText(
                        'See all',
                        gradient: LinearGradient(
                            colors: [Color(0xffEEDABC), Color(0xff987952)]),
                        fontsize: 16,
                        fontfamily: 'ReadexPro',
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 24.0, top: 10.0),
                  width: MediaQuery.of(context).size.width,
                  height: 450,
                  child: ListView(
                    //shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Desc1()),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Stack(
                            children: [
                              Container(
                                width: 304.83,
                                height: 450,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xff575757),
                                          Color(0xff1C1C1C)
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    GradientText('GMT-Master II',
                                        gradient: LinearGradient(colors: [
                                          Color(0xffEEDABC),
                                          Color(0xff987952)
                                        ]),
                                        fontsize: 18.5,
                                        fontfamily: 'Cinzel'),
                                    Text(
                                      'The Cosmopolitan Watch',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: 'ReadexPro'),
                                    ),
                                    GradientText('£52,995',
                                        gradient: LinearGradient(colors: [
                                          Color(0xffEEDABC),
                                          Color(0xff987952)
                                        ]),
                                        fontsize: 18.5,
                                        fontfamily: 'Cinzel'),
                                    SizedBox(
                                      height: 20,
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 50,
                                top: 20,
                                child: Image.asset('images/watch2.png'),
                              ),
                              Positioned(
                                child: Image.asset('images/heart.png'),
                                top: 17,
                                left: 260,
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 305,
                        child: Stack(
                          children: [
                            Container(
                              width: 304.83,
                              height: 450,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  gradient: LinearGradient(
                                      colors: [
                                        Color(0xff575757),
                                        Color(0xff1C1C1C)
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GradientText('GMT-Master II',
                                      gradient: LinearGradient(colors: [
                                        Color(0xffEEDABC),
                                        Color(0xff987952)
                                      ]),
                                      fontsize: 18.5,
                                      fontfamily: 'Cinzel'),
                                  Text(
                                    'The Cosmopolitan Watch',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: 'ReadexPro'),
                                  ),
                                  GradientText('£52,995',
                                      gradient: LinearGradient(colors: [
                                        Color(0xffEEDABC),
                                        Color(0xff987952)
                                      ]),
                                      fontsize: 18.5,
                                      fontfamily: 'Cinzel'),
                                  SizedBox(
                                    height: 20,
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              left: 50,
                              top: 20,
                              child: Image.asset('images/watch2.png'),
                            ),
                            Positioned(
                              child: Image.asset('images/heart.png'),
                              top: 17,
                              left: 260,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 24.0, bottom: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'New Watches 2022',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontFamily: 'ReadexPro'),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 340,
                  height: 150,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.black, Color(0xff383838)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('images/smallwatch.png'),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GradientText(
                            'Yacht Master 42',
                            fontsize: 18,
                            gradient: LinearGradient(
                                colors: [Color(0xffEEDABC), Color(0xff987952)]),
                            fontfamily: 'Cinzel',
                          ),
                          Text(
                            'Glowing with new brilliance',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'ReadexPro',
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GradientText(
                            '£101,999',
                            fontsize: 23,
                            gradient: LinearGradient(
                                colors: [Color(0xffEEDABC), Color(0xff987952)]),
                            fontfamily: 'Cinzel',
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
