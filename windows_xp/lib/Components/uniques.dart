import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final Widget stack;

  const BackgroundImage({
    Key key,
    this.stack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/windows_xp.jpg'), fit: BoxFit.cover),
      ),
      child: stack,
    );
  }
}

class ButtonStart extends StatelessWidget {
  const ButtonStart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {},
      child: Container(
        width: 95,
        height: 27,
        decoration: BoxDecoration(
            color: Color(0xFF1A891B),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0.2, 0.2),
                blurRadius: 1,
                spreadRadius: 0.01,
              )
            ]),
        child: Stack(children: [
          Positioned(
            left: 86,
            child: Container(
              width: 9.8,
              height: 26,
              decoration: BoxDecoration(
                  color: Color(0xFF1A891B),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.2, 0.8],
                      colors: [Color(0xFF1A891B), Color(0xFF0A5C28)])),
            ),
          ),
          Container(
            width: 89,
            height: 8,
            decoration: BoxDecoration(
              color: Color(0xFF1A891B),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.2, 0.8],
                colors: [Color(0xFF0A5C28), Color(0xFF1A891B)],
              ),
            ),
          ),
          Positioned(
            top: 17.01,
            child: Container(
              width: 89,
              height: 10,
              decoration: BoxDecoration(
                color: Color(0xFF1A891B),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.4, 0.8],
                  colors: [Color(0xFF1A891B), Color(0xFF0A5C28)],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(width: 10),
                WindowsLogo(),
                SizedBox(width: 5),
                TextStart(),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class WindowsLogo extends StatelessWidget {
  const WindowsLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      width: 17,
      height: 17,
      image: AssetImage('assets/xp_logo.png'),
      filterQuality: FilterQuality.high,
      colorBlendMode: BlendMode.plus,
    );
  }
}

class TextStart extends StatelessWidget {
  const TextStart({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'start',
      style: TextStyle(
        fontFamily: 'Rubik',
        color: Colors.white,
        fontSize: 16,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w900,
        shadows: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(1, 1),
            spreadRadius: 1,
            blurRadius: 2,
          )
        ]),
    );
  }
}
