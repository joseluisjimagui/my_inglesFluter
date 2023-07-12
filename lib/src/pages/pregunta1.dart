import 'package:flutter/material.dart';
import 'package:my_ingles/src/pages/correcto.dart';
import 'package:my_ingles/src/pages/incorrecto.dart';

class Pregunta1 extends StatefulWidget {

  String nombreUsuario = '';
  int score = 0;

  Pregunta1({Key key, this.nombreUsuario, }) : super(key: key);

  @override
  _Pregunta1State createState() => _Pregunta1State();
}

class _Pregunta1State extends State<Pregunta1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('pregunta1'),
         actions: [
           _Avatar2(),
           _Avatar(),
         ],
       ),
       body: ListView(
         padding: EdgeInsets.all(20),  
         children: [
           SizedBox(height: 45.0),
           _Letra(),
           SizedBox(height: 80.0),
           _Letra2(),
           SizedBox(height: 70.0), 
           _BotonRespuesta_1('Bad', Colors.amber, false, 'btn1'),      
            SizedBox(height: 40.0), 
           _BotonRespuesta_1('Good', Colors.deepPurpleAccent, true, 'btn2'),  
            SizedBox(height: 40.0), 
           _BotonRespuesta_1('Bad', Colors.green, false, 'btn3'),    
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
      '${widget.nombreUsuario}, lo que queremos ver, es este parraffo, como si fuera una pregunta \n\n\n ¿Entendiste?',
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
        builder: (context) => Pregunta1(nombreUsuario: widget.nombreUsuario,)
        );
        Navigator.push(context, route);
      }
    );
  }

  Widget _BotonRespuesta_1(String texto, var color, bool isGood, var tag){
    return FloatingActionButton(
      heroTag: tag,
      backgroundColor: color,
      child: Text(texto),
      onPressed: (){
        if(isGood == true){
          widget.score ++;
          final route = MaterialPageRoute(          
          builder: (context) => Correcto(nombreUsuario: widget.nombreUsuario, score: widget.score++)
          );
          Navigator.push(context, route);
        }else{
          widget.score --;
          final route = MaterialPageRoute(
          builder: (context) => Incorrecto(nombreUsuario: widget.nombreUsuario, score: widget.score--)
          );
          Navigator.push(context, route);
        }
        
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