//Este archivo es la union de todos los anteriores
///importante aclarar que sirve solo en pantalla movil como su nombre lo indica

import 'package:flutter/material.dart';
import 'package:responsive_dashboard_v0/util/my_tile.dart';

import '../constans.dart';
import '../util/my_box.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

//con esta clase cambiamos los estados de la app
class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      //definimos un fondo de color
      backgroundColor: myDefaultBackground,
      //llamamos el menu
      drawer: myDrawe,
      //en el cuerpo de la app, definimos un column como contenedor principal
      body: Column(
        children: [
          //creamos nuestro box de imagenes
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 1,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                  itemBuilder: (context, index){
                    return const MyBox();
                  }
              ),
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
