import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Me',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _buttonWidth = 100.0;
  double _buttonHeight = 50.0;

  void _increaseSize() {
    setState(() {
      _buttonWidth += 15.0;
      _buttonHeight += 10.0;
    });
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            '¡QUE VIVA EL AMOOOR!',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0
            ),
          ),
          actions: [
            TextButton(
              child: Text(':3',
              style: TextStyle(
                fontSize: 27.0
              ),
            ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/ratoncito.jpeg'),
            const Text(
              '¿Me perdonas? :(',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0
              ),
            ),
            const Padding(padding: EdgeInsets.all(5.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => _showAlert(context), 
                  child: Text(
                    'SI',
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 5, 248, 14),
                    minimumSize: Size(_buttonWidth, _buttonHeight),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(right: 20.0)),
                ElevatedButton(
                  onPressed: _increaseSize, 
                  child: Text(
                    'NO',
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 241, 18, 2),
                    minimumSize: Size(100.0, 50.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}
