import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Screen',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Color.fromARGB(255, 255, 7, 7),
            ),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color.fromARGB(255, 245, 56, 56),
          ),
          onPressed: () {},
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.green, width: 3),
          borderRadius: BorderRadius.circular(10),
          /*
          * Ada catatan penting ketika menggunakan color pada BoxDecoration,
          * yaitu pastikan tidak memberi parameter color pada Container
          */

          // shape: BoxShape.circle,

          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 5),
              blurRadius: 10,
            )
          ],
        ),
        // color: Colors.blue,
        // width: 200,
        // height: 100,
        // padding: const EdgeInsets.all(10), // ini padding
        margin: const EdgeInsets.all(10), // ini margin
        child: const Text(
          'Haaaaaaai',
          style: const TextStyle(fontSize: 40, color: Colors.white, shadows: [
            Shadow(
                offset: Offset(4.0, 4.0), blurRadius: 10.0, color: Colors.black)
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
