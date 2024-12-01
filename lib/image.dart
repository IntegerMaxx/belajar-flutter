import 'package:flutter/material.dart';
// import 'package:hello_world/ima';

// void main(List<String> args) {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Image',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: (testImage()),
    );
  }
}

class testImage extends StatelessWidget {
  const testImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network(
                'https://picsum.photos/200/300',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 20),
              Image.asset(
                'images/image.png',
                fit: BoxFit.contain, // ini untuk menyesuaikan ukuran gambar
              )
            ],
          ),
        ),
      ),
    );
  }
}
