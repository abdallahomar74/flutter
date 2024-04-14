import 'package:flutter/material.dart';
import 'package:section_project/core/routes.dart';

void main() {
 
  // ignore: non_constant_identifier_names
  MaterialApp MyApp = MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute:Routes.onGenerateRoute ,
    onGenerateInitialRoutes:(_){return
      Routes.initroute;
    } ,
  );

   runApp(MyApp);
  
}


 
  
