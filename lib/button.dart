import 'package:flutter/material.dart';
// import 'package:hello_world/container.dart';
// import 'package:hello_world/RowAndColumn.dart';

// void main(List<String> args) {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Button Test",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const TestButton(),
    );
  }
}

class TestButton extends StatelessWidget {
  const TestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(12),
            child: ElevatedButton(
              child: const Text("Tombol"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  )),
              onPressed: () {},
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child:
                TextButton(onPressed: () {}, child: const Text("Text Button")),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: OutlinedButton(
                onPressed: () {}, child: const Text('Outlined Button')),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: DropdownButton<String>(
              value: null, // Nilai awal yang belum dipilih
              hint: const Text('Select Option'),
              dropdownColor: Colors.blueAccent,
              style: TextStyle(
                color: Colors.white,
              ),
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: 'Option 1',
                  child: Text('Option 1'),
                ),
                DropdownMenuItem<String>(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
                DropdownMenuItem<String>(
                  value: 'Option 3',
                  child: Text('Option 3'),
                ),
              ],
              onChanged: (String? value) {
                // Tindakan yang dilakukan ketika item dipilih
                print('Selected value: $value');
              },
            ),
          ),
        ],
      ),
    );
  }
}


