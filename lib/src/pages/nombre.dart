import 'package:flutter/material.dart';
import 'package:my_ingles/src/pages/instrucciones.dart';

class IngresarNombre extends StatefulWidget {
  IngresarNombre({Key key}) : super(key: key);

  @override
  _IngresarNombreState createState() => _IngresarNombreState();
}

class _IngresarNombreState extends State<IngresarNombre> {

  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nombre'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),               
        children: <Widget>[
          SizedBox(height: 45.0),
          _Letra(), 
          SizedBox(height: 35.0),           
          _Imagen(),
          SizedBox(height: 60.0),
          _crearInput(),
          SizedBox(height: 30.0),
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
      child: Icon(Icons.check_circle_outline),
      onPressed: (){
        final route = MaterialPageRoute(
        builder: (context) => Instrucciones(nombreUsuario: _nombre,)
        );
        Navigator.push(context, route);
      }
    );
  }

  Widget _crearInput(){
    return TextField(    
      //autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: '¿Cual es tu nombre? / What is yor name?',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.person)
      ),
      onChanged: (valor){
        setState(() {
          _nombre = valor;
        });
        print(_nombre);
      },
    );
  }

}