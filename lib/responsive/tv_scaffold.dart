//Este archivo es la union de todos los anteriores
///importante aclarar que sirve solo en pantalla 4k como su nombre lo indica

import 'package:flutter/material.dart';
import '../constans.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class TvScaffold extends StatefulWidget {
  const TvScaffold({Key? key}) : super(key: key);

  @override
  State<TvScaffold> createState() => _TvScaffoldState();
}

//con esta clase cambiamos los estados de la app
class _TvScaffoldState extends State<TvScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      //definimos un fondo de color
      backgroundColor: myDefaultBackground,
      //en el cuerpo de la app, definimos un row como contenedor principal
      body: Row(
        children: [
          myDrawe,
          Expanded(
            child: Column(
              children: [
                //creamos nuestro box de imagenes
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 8,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 8),
                        itemBuilder: (context, index){
                          return const MyBox();
                        }
                    ),
                  ),
                ),
              ],
            ),
          ),
          //Creamos la lista de productos
          Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index){
                    return const MyTile();
                  }
              )
          )
        ],
      ),
    );
  }
}
