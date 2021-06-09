import 'package:flutter/material.dart';
import 'package:pokedex_detalhes/models/pokemon.dart';
import 'package:pokedex_detalhes/models/pokemons.dart';
import 'package:pokedex_detalhes/screens/home/widgets/pill.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokedex Lista"),
        centerTitle: true,
        
      ),
      body: ListView.separated(
        itemBuilder: builder,
        separatorBuilder: (BuildContext context, int_) {
          return Divider();
        },
        itemCount: listOfPokemons.length,
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Pokemon _pokemons = listOfPokemons.elementAt(index);
    return ListTile(
      leading: Image.asset(
        _pokemons.photo,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _pokemons.name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            _pokemons.description,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                    "Tipo",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Pill(
                    Color(0xFFef7f32),
                    _pokemons.type,
                  ),
              ],
            ),
            Column(
              children: [
                Text(
                    "Peso",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _pokemons.weight,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
              ],
            ),
          Column(
                children: [
                  Text(
                    "Altura",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _pokemons.height,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ],
    ),
  );
}
}
