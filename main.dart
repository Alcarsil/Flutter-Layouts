import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.blue,
    primaryColor: Colors.blue,
    brightness: Brightness.light,
    accentColorBrightness: Brightness.light
  ),
));