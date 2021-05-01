import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {

  final boxDecoration = BoxDecoration(  
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5,0.5],
      colors: [
        Color(0xff5EE8C5),
        Color(0Xff30BAD6)
      ]
    ),
  );

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            FirstScreen(),
            SecondScreen(),
          ],
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Background(),
        MainContent(),
      ],
    );
  }
}

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Color(0xff30BAD6),
      child: Center( 
        child: TextButton(
          onPressed: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 30.0, color: Colors.white)),
          ),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }
}

class MainContent extends StatelessWidget {

  final TextStyle estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('11°', style: estiloTexto),
          Text('Miercoles', style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 100.0, color: Colors.white)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color : Color(0xff30BAD6),
      alignment: Alignment.topCenter,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
      ),
    );
  }
}