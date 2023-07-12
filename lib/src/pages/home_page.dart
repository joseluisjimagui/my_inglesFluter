import 'package:flutter/material.dart';
import 'package:my_ingles/src/pages/nombre.dart';

class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home_page'),
      ),
      
      body: ListView(
        padding: EdgeInsets.all(20),               
        children: <Widget>[
          SizedBox(height: 45.0),
          _Letra(), 
          SizedBox(height: 35.0),           
          _Imagen(),
          SizedBox(height: 170.0),
          _Boton(context),
        ],        
      ),
      
    );
  }

  Widget _Letra(){
    return Text(
      'Bienvenido a MyIngles',
      textAlign: TextAlign.center,
      textScaleFactor: 2.0,
    );
  }

  Widget _Imagen(){
    return Image(
      image: NetworkImage('https://www.latercera.com/resizer/uZ3Ohtam6RU6za5VKNGP_7Y__a4=/900x600/smart/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/KBND64PE2VBG5MTDXIOZHVH3DE.jpg')
    );
  }

  Widget _Boton(BuildContext context){
    return FloatingActionButton(
      child: Icon(Icons.check_box),
      onPressed: (){
        final route = MaterialPageRoute(
        builder: (context) => IngresarNombre()
        );
        Navigator.push(context, route);
      }
    );
  }

}