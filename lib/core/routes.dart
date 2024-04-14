// ignore_for_file: constant_pattern_never_matches_value_type

import 'package:flutter/material.dart';
import 'package:section_project/features/forget_pass2/view/page/forget_pass2_page.dart';
import 'package:section_project/features/forgit_pass1/view/page/forget_pass1_page.dart';
import 'package:section_project/features/login/view/page/login_page.dart';
import 'package:section_project/features/registration/view/page/registration_page.dart';
import 'package:section_project/features/verification/view/page/verification_page.dart';

class Routes {
 static List<Route> initroute = [
   MaterialPageRoute<dynamic>(builder: (BuildContext context) => const login_page(),),

 ];


 static Route<dynamic> onGenerateRoute(RouteSettings settings){
  switch(settings.name){
    case "login": return MaterialPageRoute<dynamic>(builder: (BuildContext context) => const login_page(),);
    case 'registration': return MaterialPageRoute<dynamic>(builder: (BuildContext context) => const Registration_page(),);
    case 'forgetpass1': return MaterialPageRoute<dynamic>(builder: (BuildContext context) => const forget_pass1_page(),);
    case 'forgetpass2': return MaterialPageRoute<dynamic>(builder: (BuildContext context) => const forget_pass2_page(),);
    case 'verification': return MaterialPageRoute<dynamic>(builder: (BuildContext context) => const verification_page(),);
    default: return MaterialPageRoute<dynamic>(builder: (BuildContext context) => const login_page(),);
  


  }
  }
}