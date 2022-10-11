import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key, required this.mobileScaffold, required this.tabletScaffold, required this.desktopScaffold, required this.tvScaffold}) : super(key: key);

  //se definen las distintos Scaffolds
  final Widget mobileScaffold; //Widget que ajusta el tamaño a dispositivo movil
  final Widget tabletScaffold; //Widget que ajusta el tamaño a dispistivo tablet
  final Widget desktopScaffold; // Widget que ajusta el tamaño a dispositivo desktop
  final Widget tvScaffold; //Widget que ajusta el tamaño a dispositivo xxl o televisores 4k

//se condiciona el Scaffold segun el tamaño de la pantalla
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constrains){
        if (constrains.maxWidth < 500){
          return mobileScaffold;
        }else if (constrains.maxWidth < 1100){
          return tabletScaffold;
        }else if (constrains.maxWidth < 1920) {
          return desktopScaffold;
        }else {
          return tvScaffold;
        }
      },
    );
  }
}
