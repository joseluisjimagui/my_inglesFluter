import 'package:flutter/material.dart';
import 'package:my_ingles/src/pages/actividad.dart';

class Instrucciones extends StatefulWidget {

  String nombreUsuario = '';

  Instrucciones({Key key, this.nombreUsuario}) : super(key: key);

  @override
  _InstruccionesState createState() => _InstruccionesState();
}

class _InstruccionesState extends State<Instrucciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('instrucciones'),
         actions: [
           _Avatar2(),
           _Avatar(),
         ],
       ),
       body: ListView(
         padding: EdgeInsets.all(20),               
          children: <Widget>[
          SizedBox(height: 45.0),
          _Letra(), 
          SizedBox(height: 80.0),           
          _Letra2(),
          SizedBox(height: 270.0),
          _Boton(context),          
        ],
       ),
    );
  }


  Widget _Letra(){
    return Text(
      'Actividad: Video',
      textAlign: TextAlign.center,
      textScaleFactor: 2.0,
    );
  }

  Widget _Letra2(){
    return Text(
      '${widget.nombreUsuario} dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
      textAlign: TextAlign.center,
      textScaleFactor: 1.2,
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
        builder: (context) => Actividad(nombreUsuario: widget.nombreUsuario,)
        );
        Navigator.push(context, route);
      }
    );
  }

  Widget _Avatar(){
    return Container(
      padding: EdgeInsets.all(8),
      child: CircleAvatar(
        backgroundImage: NetworkImage('https://www.moshimoshi-nippon.jp/wp/wp-content/uploads/2018/12/kyary-pamyu-pamyu.jpeg'),
        radius:20.0
      )
    );
  }

  Widget _Avatar2(){
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      child: CircleAvatar(
        child: Text('${widget.nombreUsuario[0]}${widget.nombreUsuario[widget.nombreUsuario.length-1]} '),
        backgroundColor: Colors.white,
      ),
    );
  }


}