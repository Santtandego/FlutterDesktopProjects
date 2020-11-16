import 'package:flutter/material.dart';

import 'Components/uniques.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: BackgroundImage(
      stack: Stack(
        children: [
          Positioned(
            top: 800.8 == size.height
                ? size.height * 0.9658
                : size.height * 0.96,
            child: Row(
              children: [
                Container(
                  width: size.width * 0.89,
                  height: 27,
                  color: Color(0xFF245ED9),
                  child: Stack(
                    children: [
                      Container(
                        width: size.width * 0.89,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Color(0xFF245ED9),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.2, 0.8],
                            colors: [Color(0xFF4086FF), Color(0xFF245ED9)],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 21.2,
                        child: Container(
                          width: size.width * 0.89,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Color(0xFF245ED9),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: [0.3, 0.8],
                              colors: [Color(0xFF245ED9), Color(0xFF1444AC)],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.11,
                  height: 27,
                  color: Color(0xFF1991DF),
                  child: Stack(
                    children: [
                      Container(
                        width: size.width * 0.11,
                        height: 6,
                        decoration: BoxDecoration(
                          color: Color(0xFF1991DF),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.2, 0.8],
                            colors: [Color(0xFF44ACF4), Color(0xFF1991DF)],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 24,
                        child: Container(
                          width: size.width * 0.11,
                          height: 6,
                          decoration: BoxDecoration(
                            color: Color(0xFF1991DF),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0.2, 0.8],
                              colors: [Color(0xFF046090), Color(0xFF1991DF)],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 800.8 == size.height
                ? size.height * 0.9658
                : size.height * 0.96,
            left: 0.0,
            child: ButtonStart(),
          ),
        ],
      ),
    ));
  }
}
