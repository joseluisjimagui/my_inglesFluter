import 'package:flutter/material.dart';
import 'package:my_ingles/src/pages/home_page.dart';

class Resultados extends StatefulWidget {

  String nombreUsuario = '';
  int score = 0;

  Resultados({Key key, this.nombreUsuario, this.score}) : super(key: key);

  @override
  _ResultadosState createState() => _ResultadosState();
}

class _ResultadosState extends State<Resultados> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('resultados'),
         actions: [
           _Avatar2(),
           _Avatar(),
         ],
       ),
       body: ListView(
         padding: EdgeInsets.all(20),               
          children: <Widget>[
          SizedBox(height: 45.0),
          _Letra('Resultados: $widget.score'), 
          SizedBox(height: 25.0),         
          _Letra(widget.nombreUsuario), 
          SizedBox(height: 40.0),       
           _Imagen(),
          SizedBox(height: 45.0),    
          _Letra2(),
          SizedBox(height: 30.0),
          _Boton(context),          
        ],
       ),
    );
  }

  
  Widget _Letra(String letra){
    return Text(
      letra,
      textAlign: TextAlign.center,
      textScaleFactor: 2.0,
    );
  }

  Widget _Letra2(){
    return Text(
      'Aqui se dara un texto en donde se describira el desempeño del usuaio por medio de su score, puedes seguir mejorando si sigues practicando.\n\nLet´s work!!',
      textAlign: TextAlign.center,
      textScaleFactor: 1.2,
    );
  }

  Widget _Imagen(){
    return Image(
      image: NetworkImage('https://i1.wp.com/www.bitme.gg/wp-content/uploads/2020/07/La-importancia-de-la-escuela-en-el-anime-heroes-y-villanos-tambien-tienen-que-estudiar-2.jpg?resize=1280%2C720&ssl=1')
    );
  }

  Widget _Boton(BuildContext context){
    return FloatingActionButton(
      child: Icon(Icons.check_box),
      onPressed: (){
        final route = MaterialPageRoute(
        builder: (context) => HomePage()
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