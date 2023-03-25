import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {

  const HomeScreen({super.key});

   @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  final miControladorDivertido = TextEditingController();
  final miControladorDivertido2 = TextEditingController();
  

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    miControladorDivertido.dispose();
    miControladorDivertido2.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {

    const fontSize30 =  TextStyle( fontSize:30);
    const fontSize25 =  TextStyle( fontSize:25);

    String string1;
    return  Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('Concatena2'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text('To concatenación:', style: fontSize30),

            TextField(
              controller: miControladorDivertido,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: ''
              ),
            ),

            TextField(
              controller: miControladorDivertido2,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: ''
              ),
            ),
          ]
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.accessible_forward_sharp),
        onPressed: () { 
          String string1 = miControladorDivertido.text;
          String string2 = miControladorDivertido2.text;
          String stringFinal = string1 + string2;
          showDialog(
            context: context, 
            builder: (context) {
              return AlertDialog(
                content: Text(stringFinal),
              );
            }
            );
        },

        ),
    );
  }

}

  
  
