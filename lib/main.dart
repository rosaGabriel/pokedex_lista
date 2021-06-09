import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/screens/home/home.dart';


void main() {
  runApp(MaterialApp(
    title: "Pokedex Lista",
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
  ));
}
