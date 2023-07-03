import 'package:contadorwear/view/timer_page.dart';
import 'package:flutter/material.dart';
import 'package:wear/wear.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AmbientMode(
      child: const AmbientModePage(),
      builder: (context, mode, child){
        return MaterialApp(
          theme: ThemeData(
            visualDensity: VisualDensity.compact,
            colorScheme: mode == WearMode.active 
              ? const ColorScheme.light(
                primary: Color.fromARGB(255, 255, 255, 255)
              )
              : const ColorScheme.dark(
                primary: Colors.white24,
                onBackground: Colors.white12,
                onSurface: Colors.white
              ), 
            useMaterial3: true,
          ),
          home: child,
        );
      }
    );
  }
}
