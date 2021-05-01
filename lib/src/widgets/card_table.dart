import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(

      children: <TableRow>[

        TableRow(
          children: <Widget>[
            _Card(color: Colors.blue, icono: Icons.border_all, texto: 'General'),
            _Card(color: Colors.purpleAccent, icono: Icons.directions_bus, texto: 'Bus'),
          ]
        ),

        TableRow(
          children: <Widget>[
            _Card(color: Colors.pinkAccent, icono: Icons.shop, texto:'Buy'),
            _Card(color: Colors.orange, icono: Icons.insert_drive_file, texto:'File'),
          ]
        ),

        TableRow(
          children: <Widget>[
            _Card(color: Colors.blueAccent, icono: Icons.movie_filter, texto: 'Entertaiment'),
            _Card(color: Colors.green, icono: Icons.help_outline, texto: 'Grocery'),
          ]
        ),

        TableRow(
          children: <Widget>[
            _Card(color: Colors.red, icono: Icons.collections, texto: 'Photos'),
            _Card(color: Colors.teal, icono: Icons.border_all,texto: 'General'),
          ]
        ),

      ],
    );
  }
}

class _Card extends StatelessWidget {

  final Color color;
  final IconData icono;
  final String texto;

  const _Card({
    required this.color,
    required this.icono, 
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {

    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(height: 5.0),
          CircleAvatar( 
            backgroundColor: this.color,
            radius: 35.0,
            child: Icon(this.icono, color: Colors.white, size: 30.0),
          ),
          Text(this.texto, style: TextStyle(color: this.color)),
          SizedBox(height: 5.0),
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    required this.child
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20.0)
            ),
            child: this.child,
          )   ,
        ),
      ),
    );
  }
}