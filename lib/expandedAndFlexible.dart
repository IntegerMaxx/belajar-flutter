import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Expanded & Flexible',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: (ExpandedColumnTest()),
    );
  }
}

class ExpandedColumnTest extends StatelessWidget {
  const ExpandedColumnTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            child: Container(
          color: Colors.red,
        )),
        Expanded(
            child: Container(
          color: Colors.orange,
        )),
        Expanded(
            child: Container(
          color: Colors.yellow,
        )),
        Expanded(
            child: Container(
          color: Colors.green,
        )),
        Container(
          color: Colors.blue,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ExpandedFlexiblePage()),
                );
              },
              child: const Text('Go to Flexible Screen')),
        ),
        Expanded(
            child: Container(
          color: Colors.indigo,
        )),
        Expanded(
            child: Container(
          color: Colors.purple,
        )),
      ],
    );
  }
}

// class FlexibleColumnTest extends StatelessWidget {
//   const FlexibleColumnTest({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//     );
//   }
// }

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: const [
                ExpandedWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: const [
                ExpandedWidget(),
                ExpandedWidget(),
              ],
            ),
            Row(
              children: const [
                FlexibleWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: const [
                FlexibleWidget(),
                ExpandedWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Expanded',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Flexible',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

/*
PENJELASAN: jadi expanded itu widget yana dimana dia akan menempati
dari ukuran ruang yang tersisa, sementara flexible dia TIDAK AKAN
mengambil ukuran ruang yang tersisa >> flexible hanya akan menampatkan
dirinya pada ruangyang lebih kecil karna dia TIDAK mengambil ukuran
ruang yang tersisa.
*/