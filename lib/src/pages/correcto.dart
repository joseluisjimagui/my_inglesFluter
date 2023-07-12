import 'package:flutter/material.dart';
import 'package:my_ingles/src/pages/pregunta1.dart';
import 'package:my_ingles/src/pages/resultados.dart';

class Correcto extends StatefulWidget {

  String nombreUsuario = '';
  int score = 0;

  Correcto({Key key, this.nombreUsuario, this.score}) : super(key: key);

  @override
  _CorrectoState createState() => _CorrectoState();
}

class _CorrectoState extends State<Correcto> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('correcto'),
       ),
       body: ListView(
         padding: EdgeInsets.all(20),
         children: [
           SizedBox(height: 45.0),
          _Letra(), 
          SizedBox(height: 35.0),           
          _Imagen(),
          SizedBox(height: 40.0),
          _Letra2(),
          SizedBox(height: 40.0),
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
      '${widget.nombreUsuario}, ${widget.score}, queremos ver, es este parraffo como si estuvieramos felicitando \n\n\n Felidades I guess',
      textAlign: TextAlign.center,
      textScaleFactor: 1.2,
    );
  }

  Widget _Imagen(){
    return Image(
      image: NetworkImage('https://www.memecreator.org/static/images/memes/4976689.jpg')
    );
  }

  Widget _Boton(BuildContext context){
    return FloatingActionButton(
      child: Icon(Icons.check_box),
      onPressed: (){
        final route = MaterialPageRoute(
        builder: (context) => Resultados(nombreUsuario: widget.nombreUsuario,)
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