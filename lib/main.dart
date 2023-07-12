import 'package:flutter/material.dart';
import 'package:my_ingles/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Ingles',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationsRoutes(),
    );
  }
}