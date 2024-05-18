import 'package:flutter/material.dart';
import 'package:textfield/home/homepage/homescreen.dart';

import '../home/viewscreen/viewpage.dart';

class AppRoutes
{
  static Map<String, Widget Function(BuildContext)> routes={
    '/':(context)=>const HomePage(),
    '/view':(context)=>const ViewPage(),
  };
}