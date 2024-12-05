import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar List View',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: (ListViewTest()),
    );
  }
}

class ListViewTest extends StatelessWidget {
  const ListViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar List View'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.blue, border: Border.all(color: Colors.white)),
            child: const Center(
              child: Text(
                '1',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.blue, border: Border.all(color: Colors.white)),
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.blue, border: Border.all(color: Colors.white)),
            child: const Center(
              child: Text(
                '3',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.blue, border: Border.all(color: Colors.white)),
            child: const Center(
              child: Text(
                '4',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.blue, border: Border.all(color: Colors.white)),
            child: const Center(
              child: Text(
                '5',
                style: TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.blue, border: Border.all(color: Colors.white)),
            child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      // navigasi ke layar kedua
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DisplayNumberList()),
                      );
                    },
                    child: const Text('Go to list view number'))),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.blue, border: Border.all(color: Colors.white)),
            child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      // navigasi ke layar kedua
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DisplayListViewBuilder()),
                      );
                    },
                    child: const Text('Display List View Builder'))),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.blue, border: Border.all(color: Colors.white)),
            child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      // navigasi ke layar kedua
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DisplayListViewSeparated()),
                      );
                    },
                    child: const Text('Display List View Separated'))),
          ),
        ],
      ),
    );
  }
}

/*
PENJELASAN: jadi ListView itu seperti column atau row
yang bis kita taruh pada body suatu widget pada contoh diatas
kita mnaruhnya pada bodynya scaffold. Di dalam ListView kita
bisa memuat banyak children

*/

class DisplayNumberList extends StatelessWidget {
  const DisplayNumberList({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Number"),
        actions: const [],
      ),
      body: ListView(
        children: numberList.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(color: Colors.white),
            ),
            child: Center(
              child: Text(
                '$number', // Ditampilkan sesuai item
                style: const TextStyle(fontSize: 50, color: Colors.white),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class DisplayListViewBuilder extends StatelessWidget {
  const DisplayListViewBuilder({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List View Builder"),
          actions: const [],
        ),
        body: ListView.builder(
            itemCount: numberList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    '${numberList[index]}',
                    style: const TextStyle(fontSize: 50),
                  ),
                ),
              );
            }));
  }
}

class DisplayListViewSeparated extends StatelessWidget {
  const DisplayListViewSeparated({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List View Separated"),
          actions: const [],
        ),
        body: ListView.separated(
            itemCount: numberList.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    '${numberList[index]}',
                    style: const TextStyle(fontSize: 50),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            }));
  }
}
/*
PENJELASAN: jadi dengan menggunakan ListView.separated setiap itemnya 
dipisahkan dengan separated atau pemisah.
*/
