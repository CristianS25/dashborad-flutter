/*Cristian Quevedo - 2470980
Este es el archivo principal, que le da funcionalidad a nuestra aplicación*/

//importamos los paquetes necesarios
import 'package:flutter/material.dart';
import 'responsive/tv_scaffold.dart';
import 'responsive/desktop_scaffold.dart';
import 'responsive/tablet_scaffold.dart';
import 'responsive/mobile_scaffold.dart';
import 'responsive/responsive_layout.dart';

//funcion que inicia el programa
void main(){
  runApp(const MyApp());
}

//clase stateless que no nos permite modificar nada, pues es solo una vista
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Se retorna el Material desing
    return const MaterialApp(
      //quitamos el banner de chequeo
      debugShowCheckedModeBanner: false,
      /*acontinuacion definimos los scaffold responsive
      para nuestra app*/
      home:
      ResponsiveLayout(
        //se define un Scaffold para cada tamaño de pantalla
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
        tvScaffold: TvScaffold(),
      ),
    );
  }
}
