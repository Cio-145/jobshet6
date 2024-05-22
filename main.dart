import 'package:flutter/material.dart';

void main() {
  runApp(TeksUtama());
}

class TeksUtama extends StatefulWidget {
  @override
  _TeksUtamaState createState() => _TeksUtamaState();
}

class _TeksUtamaState extends State<TeksUtama> {
  var listNama = [
    'Wahyu Tri Suko Yuwono',
    'Wahyu Tri Suko Yuwono',
    'Andi',
    'Sari',
    'Rudi',
    'Nurul',
  ];
  var listWarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Colors.yellow,
  ];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halo Dunia'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'apa kabar',
                textDirection: TextDirection.ltr,
              ),
              Text(
                listNama[index % listNama.length],
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: listWarna[index % listNama.length],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Refresh',
          child: Icon(Icons.refresh),
          onPressed: () {
            setState(() {
              index = (index + 1) % listNama.length;
            });
          },
        ),
      ),
    );
  }
}
