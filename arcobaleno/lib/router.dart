import 'dart:js';
import 'package:arcobaleno/constants/route_constant.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RouteConstant.MainRoute:
      return MaterialPageRoute(
          builder: (context) => MainPage(title: "L' Arcobaleno"));
    case RouteConstant.HomeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePageView());
    case RouteConstant.InfoViewRoute:
      return MaterialPageRoute(builder: (context) => InfoView());
    default:
      return MaterialPageRoute(
          builder: (context) => UndefinedScreen(name: settings.name));
  }
}
