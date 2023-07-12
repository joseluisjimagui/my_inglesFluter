import 'package:flutter/material.dart';
import 'package:my_ingles/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationsRoutes(){

  return <String, WidgetBuilder>{
    '/'          : (BuildContext context) => HomePage(),
  };

}