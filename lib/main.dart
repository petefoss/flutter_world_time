//import 'dart:js';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nn_world_time/pages/choose_location.dart';
import 'package:nn_world_time/pages/home.dart';
import 'package:nn_world_time/pages/loading.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));
