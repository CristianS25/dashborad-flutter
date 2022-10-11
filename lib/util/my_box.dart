//Este file tiene la funcionalidad de crear una fila de imagenes que luego seran usadas


import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Image.asset('igm/img_box/balon.png')),
          Expanded(child: Image.asset('igm/img_box/cicl.png')),
          Expanded(child: Image.asset('igm/img_box/gua.png')),
          Expanded(child: Image.asset('igm/img_box/mot.png')),
        ],
      )
    );
  }

}
