//Este archivo es la union de todos los anteriores
///importante aclarar que sirve solo en pantalla desktop como su nombre lo indica

import 'package:flutter/material.dart';
import '../constans.dart';
import '../util/my_box.dart';
import '../util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

//con esta clase cambiamos los estados de la app
class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      //definimos un fondo de color
      backgroundColor: myDefaultBackground,
      //en el cuerpo de la app, definimos un row como contenedor principal
      body: Row(
        children: [
          //llamamos el menu
          myDrawe,
          //creamos nuestro box de imagenes
          Expanded(
            flex: 4,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
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
                        },
                    ),
                )
              ],
            ),
          ),
        //creamos nuestro espacio para la publicidad o aside
        Expanded(child: Column(
          children: [
            Expanded(child:(
                Container(
                  color: Colors.deepPurple,
                  child: Image.asset('../igm/xd.png'),
                )
            ))
          ],
        ))
        ],
      ),
    );

  }
}
