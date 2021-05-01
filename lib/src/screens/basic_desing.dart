import 'package:flutter/material.dart';

class BasicDesingScreen extends StatelessWidget {
  
  final estituloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estituloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  
        child: Column(
          children: <Widget>[
            //Imagen 
            Image(  
              image: AssetImage('assets/landscapes.jpg'),
            ),

            //Titulo
            Title(estituloTitulo: estituloTitulo, estituloSubtitulo: estituloSubtitulo),

            //Actions
            ActionsButtons(),

            //Text
            InsertText(),
            InsertText(),
            InsertText(),
            InsertText(),
            InsertText(),
          ],
        ),
      ),
    );
  }

}

class Title extends StatelessWidget {

  const Title({
    Key? key,
    required this.estituloTitulo,
    required this.estituloSubtitulo,
  }) : super(key: key);

  final TextStyle estituloTitulo;
  final TextStyle estituloSubtitulo;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
         padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
         child: Row(  
           children: <Widget>[

             Expanded(
               child: Column( 
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                   Text('Montaña' , style: estituloTitulo),
                   SizedBox(height: 7.0),
                   Text('Planeta Tierra', style: estituloSubtitulo),
                 ],
               ),
             ),

             Icon(Icons.star, color: Colors.red, size: 30.0,),
             Text('41' , style: TextStyle(fontSize: 20.0),),
           ],
         ),
       ),
    );
  }
}

class ActionsButtons extends StatelessWidget {
  const ActionsButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          
          Action(icon: Icons.call, text: 'CALL'),
          Action(icon: Icons.near_me, text: 'ROUTE'),
          Action(icon: Icons.share, text: 'SHARE'),
          
        ],
      ),
    );
  }
}

class Action extends StatelessWidget {

  const Action({
    required this.text, 
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 30.0),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue)),
      ],
    );
  }
}

class InsertText extends StatelessWidget {

  const InsertText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Text(
          'Ea Lorem ad irure quis ullamco. Dolor dolore duis tempor excepteur fugiat. Ut proident anim reprehenderit dolore enim nostrud adipisicing aliqua fugiat sit ipsum aute non consequat. Voluptate excepteur velit ipsum excepteur ut Lorem et irure. Sit excepteur id cillum dolor quis velit.',
          textAlign: TextAlign.justify,
        ),
    );
  }
}

