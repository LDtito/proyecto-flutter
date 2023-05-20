import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class MyApp extends StatelessWidget {
  static String _title = 'AUTOS DE ALTA GAMA';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Cars(),
    );
  }
}

class Cars extends StatefulWidget {
  Cars({super.key});

  @override
  State<Cars> createState() => _CarsState();
}

class _CarsState extends State<Cars> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: const Text(
                'AUTOS DE ALTA GAMA',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 6.0,
                  color: Color.fromRGBO(14, 1, 17, 1),
                  fontFamily: 'cursive',
                ),
              ),
            ),
            SizedBox(
              height: 250.0,
              width: 350.0,
              child: Image.network(
                  'https://img.remediosdigitales.com/a0136d/lamborghini-urus-s-2022-07/1366_2000.jpeg'),
            ),
            SizedBox(
              width: 450,
              child: Text(
                  'El Lamborghini Urus es un automóvil deportivo utilitario (SUV) fabricado por el fabricante italiano de automóviles de lujo Lamborghini. Fue presentado oficialmente en 2017 y se convirtió en el primer SUV de la marca en décadas, siguiendo el legado del Lamborghini LM002 que se produjo en la década de 1980.'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Leer más'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  BootstrapIcons.facebook,
                  color: Colors.blue,
                ),
                Icon(
                  BootstrapIcons.github,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}