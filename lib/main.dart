import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Lab11_Chavez',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab11_Chavez'),
        backgroundColor: Colors.lightBlue, // Color de la barra de navegación
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Column(
              children: [
                // Controles Material
                const Text(
                  'Controles Material',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlue,
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  child: const Text('Botón Material'),
                ),
                const SizedBox(height: 10),
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                  fillColor: WidgetStateProperty.all(Colors.lightBlue),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 200, // Ajusta el ancho según lo necesites
                  child: Slider(
                    value: 0.5,
                    activeColor: Colors.lightBlue,
                    onChanged: (value) {},
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                // Controles Cupertino
                const Text(
                  'Controles Cupertino',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                CupertinoButton(
                  color: CupertinoColors.activeBlue,
                  onPressed: () {},
                  child: const Text('Botón Cupertino'),
                ),
                const SizedBox(height: 10),
                CupertinoSwitch(
                  value: true,
                  activeColor: CupertinoColors.activeBlue,
                  onChanged: (value) {},
                ),
                const SizedBox(height: 10),
                CupertinoSlider(
                  value: 0.5,
                  activeColor: CupertinoColors.activeBlue,
                  onChanged: (value) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}