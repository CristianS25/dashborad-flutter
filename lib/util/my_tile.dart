/*Este archivo tiene una similitud con el file "constans" 
ya que aquí tambien definimos, en este caso la lista de objetos que usaremos en nuestras aplicacion
*/

//importamos el paquete de diseño
import 'package:flutter/material.dart';

//clase stateless ya que la lista de productos en venta no podrá ser alterada por el user
class MyTile extends StatelessWidget {
  const MyTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Scrollbar(
        isAlwaysShown: true,
        child: Column(
          children: const [
            ListTile(
              title: Text('Medias'),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              title: Text('Chaquetas'),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              title: Text('Zapatos'),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              title: Text('Zapatillas Deportivas'),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              title: Text('Pantalones'),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              title: Text('Gorros'),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              title: Text('Bolsos'),
              trailing: Icon(Icons.add),
            ),
            ListTile(
              title: Text('Relojes'),
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
