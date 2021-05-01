import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          child: Column(  
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
              SizedBox(height: 10.0),
              Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18.0)),

            ],
          ),
        ),
      ),
    );
  }
}