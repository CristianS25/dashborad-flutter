/*Este file tiene la finalidad de definir una sola vez
las funciones que vayamos a necesitar varias veces*/

//importamos el paquete del material de diseño
import 'package:flutter/material.dart';

//definimos un color de fondo
var myDefaultBackground = Colors.blueGrey;

//Definimos nuestro appbar que es similar a un header o navbar
var myAppBar = AppBar(
  //definimos el titulo
  title: const Center(child: Text('Mercado Preso',
      style: TextStyle(color: Colors.white),
      textAlign: TextAlign.center),),
  backgroundColor: Colors.black54,

  flexibleSpace: const Image(
      alignment: Alignment.topRight,
      image: AssetImage('igm/log.png'),
      width: 50,
      height: 50,),
);

//Definimos nuestro Drawer que es similar a un menu "hamburguesa"
var myDrawe = Drawer(
  //definimos un list view con el fin de crear nuestra lista de productos
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      //se le da diseño a el menú
      DrawerHeader(
        decoration: const BoxDecoration(
          color: Colors.indigoAccent,
        ),
        //almacenamos el menu en una columna con el fin de evitar inconvenientes en caso de implementar más opciones
        child: Column(
          //el const define que el text no podra ser alterado por el usuario
          children: const [
            Text(
              'U S U A R I O',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            // definimos el icono para nuestro user
            Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
              size: 70.0,
            )
          ],
        ),
      ),
      //definimos la lista de opciones que tendra nuestro drawer
      const ListTile(
        leading: Icon(Icons.home, color: Colors.black, size: 25.0,),
        title: Text('P r i n c i p a l'),
      ),
      const ListTile(
        leading: Icon(Icons.chat, color: Colors.black, size: 25.0,),
        title: Text('M e n s a j e s'),
      ),
      const ListTile(
        leading: Icon(Icons.phone, color: Colors.black, size: 25.0,),
        title: Text('C o n t a c t o'),
      ),
      const ListTile(
        leading: Icon(Icons.settings, color: Colors.black, size: 25.0,),
        title: Text('C o n f i g u r a c i ó n'),
      ),
      const ListTile(
        leading: Icon(Icons.help_outline_outlined, color: Colors.black, size: 25.0,),
        title: Text('A y u d a'),
      ),
      const ListTile(
        leading: Icon(Icons.logout, color: Colors.black, size: 25.0,),
        title: Text('S a l i r'),
      )
    ],
  ),
);