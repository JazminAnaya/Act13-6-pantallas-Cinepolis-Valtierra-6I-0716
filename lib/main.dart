import 'package:flutter/material.dart';
import 'tarjeta.dart';
import 'sucursal.dart';
import 'membresia.dart';
import 'registro_completo.dart';
import 'cartelera.dart';
import 'detalle.dart';

void main() => runApp(const CinepolisApp());

class CinepolisApp extends StatelessWidget {
  const CinepolisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cinepolis Valtierra',
      // Ahora la ruta inicial es Tarjeta
      initialRoute: '/tarjeta',
      routes: {
        '/tarjeta': (context) => const TarjetaScreen(),
        '/sucursal': (context) => const SucursalScreen(),
        '/membresia': (context) => const MembresiaScreen(),
        '/registro_completo': (context) => const RegistroCompletoScreen(),
        '/cartelera': (context) => const CarteleraScreen(),
        '/detalle_pelicula': (context) => const DetallePeliculaScreen(),
      },
    );
  }
}