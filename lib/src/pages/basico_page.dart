import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  
  final estituloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estituloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(  
        child: Column(
          children: <Widget>[
            _crearImage(),
            _crearTitulo(),
            _crearAcciones(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      ),
    );
  }

  Widget _crearImage(){
    return Image(  
      image: NetworkImage('https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1.jpg'),
    );
  }

  Widget _crearTitulo(){
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

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
        
      ],
    );
  }

  Widget _accion(IconData icon, String text){

    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 40.0),
        SizedBox(height: 5.0),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue)),
      ],
    );
  }

  Widget _crearTexto(){

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
        child: Text(
          'Ea Lorem ad irure quis ullamco. Dolor dolore duis tempor excepteur fugiat. Ut proident anim reprehenderit dolore enim nostrud adipisicing aliqua fugiat sit ipsum aute non consequat. Voluptate excepteur velit ipsum excepteur ut Lorem et irure. Sit excepteur id cillum dolor quis velit.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}