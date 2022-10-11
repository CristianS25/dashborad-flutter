import 'package:flutter/material.dart';
import '../constans.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
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
            aspectRatio: 5,
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
