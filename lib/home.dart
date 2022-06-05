import 'package:flutter/material.dart';
import 'package:rolex_ui/menu.dart';
import 'gradient.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff000000),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.black,
                child: Center(
                  child: Stack(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 521,
                        child: Image.asset(
                          'images/watch1.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 84,
                          //color: Colors.black,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Color(0xff010101).withOpacity(0.01)
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0.7, 1.0],
                                tileMode: TileMode.clamp),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 450,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 70,
                          //color: Colors.black,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.black,
                                  Color(0xff010101).withOpacity(0.01)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                tileMode: TileMode.clamp),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset('images/left.png'),
                        Image.asset('images/logo.png'),
                        Image.asset('images/right.png')
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 565,
                child: Container(
                  padding: EdgeInsets.only(left: 18.0, bottom: 10.0),
                  width: 370,
                  height: 166,
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          GradientText('Swiss',
                              fontsize: 40,
                              gradient: LinearGradient(colors: [
                                Color(0xffEEDABC),
                                Color(0xff987952)
                              ]), fontfamily: 'Cinzel',),
                        ],
                      ),
                      Row(
                        children: const [
                          GradientText('Luxury',
                              fontsize: 28,
                              gradient: LinearGradient(colors: [
                                Color(0xffEEDABC),
                                Color(0xff987952)
                              ]), fontfamily: 'Cinzel',),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         GradientText('Watches',
                              fontsize: 40,
                              gradient: LinearGradient(colors: [
                                Color(0xffEEDABC),
                                Color(0xff987952)
                              ]), fontfamily: 'Cinzel',),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainMenu()));
                            },
                            child: Container(
                              child: Image.asset('images/Vector.png'),
                            ),
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
      ),
    );
  }
}
