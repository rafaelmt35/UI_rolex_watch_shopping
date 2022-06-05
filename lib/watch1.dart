import 'package:flutter/material.dart';
import 'package:rolex_ui/gradient.dart';

class Desc1 extends StatefulWidget {
  const Desc1({Key? key}) : super(key: key);

  @override
  State<Desc1> createState() => _Desc1State();
}

class _Desc1State extends State<Desc1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/Screen3.png'),
                      fit: BoxFit.fill)),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            child: Image.asset('images/back1.png'),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          Image.asset('images/heart2.png')
                        ],
                      ),
                      SizedBox(
                        height: 190,
                      ),
                      Column(
                        children: [
                          SideMenuCircle(Color(0xff2F3838)),
                          SideMenuCircle(Color(0xff2F3838)),
                          SideMenuCircle(Color(0xff2F3838)),
                          SideMenuCircle(Color(0xff2F3838)),
                          SideMenuCircle(Colors.white)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              child: Image.asset('images/bigwatch1.png'),
              left: 65,
              top: 49,
            ),

            //description
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 496),
                width: 310,
                height: 221,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    gradient: LinearGradient(
                        colors: [Color(0xff575757), Color(0xff000000)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GradientText('GMT-Master II',
                                gradient: LinearGradient(colors: [
                                  Color(0xffEEDABC),
                                  Color(0xff987952)
                                ]),
                                fontsize: 20,
                                fontfamily: 'Cinzel'),
                            Text(
                              'The Cosmopolitan Watch',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'ReadexPro',
                                  color: Colors.white),
                            )
                          ],
                        ),
                        Text(
                          'Since 1982',
                          style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'Cinzel',
                              color: Colors.white),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0, right: 10),
                      child: Text(
                        'An original version of the GMT-Master II with the crown on the left side of the case and a green and black bezel.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'ReadexPro'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0),
                      child: GradientText('More details',
                          gradient: LinearGradient(
                              colors: [Color(0xffEEDABC), Color(0xff987952)]),
                          fontsize: 13,
                          fontfamily: 'ReadexPro'),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: 'ReadexPro'),
                            ),
                            GradientText('£52,995',
                                gradient: LinearGradient(colors: [
                                  Color(0xffEEDABC),
                                  Color(0xff987952)
                                ]),
                                fontsize: 18,
                                fontfamily: 'Cinzel'),
                          ],
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'BUY NOW',
                              style: TextStyle(
                                  fontFamily: 'Cinzel',
                                  fontSize: 18,
                                  color: Color(0xff022F2C)),
                            ),
                          ),
                          width: 133,
                          height: 38,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xffEEDABC),
                                    Color(0xff987952)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container SideMenuCircle(Color circlecolor) {
    return Container(
      margin: EdgeInsets.only(bottom: 9),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
          color: circlecolor, borderRadius: BorderRadius.circular(20)),
    );
  }
}
