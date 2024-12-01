import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Input Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: TestInputWidget(),
    );
  }
}

class TestInputWidget extends StatefulWidget {
  const TestInputWidget({super.key});

  @override
  State<TestInputWidget> createState() => _TestInputWidgetState();
}

class _TestInputWidgetState extends State<TestInputWidget> {
  String _name = '';
  TextEditingController _controller = TextEditingController();
  bool lightOn = false;
  String? language;
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              child: TextField(
                onChanged: (String value) {
                  setState(() {
                    _name = value;
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Write your name here...',
                  labelText: 'Your Name',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              child: TextField(
                onSubmitted: (String value) {
                  setState(() {
                    _name = value;
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Write your name here...',
                  labelText: 'Your Name',
                ),
              ),
            ),
            Container(
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Write your name here...',
                  labelText: 'Your Name',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Submit'),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  )),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, $_name'),
                      );
                    });
              },
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              child: const Text('forController'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, ${_controller.text}'),
                      );
                    });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),
                  )),
            ),
            SizedBox(height: 10),
            Container(
              child: Switch(
                  value: lightOn,
                  onChanged: (bool value) {
                    setState(() {
                      lightOn = value;
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(lightOn ? 'Light On' : 'Light Off'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListTile(
                      leading: Radio<String>(
                          value: 'Dart',
                          groupValue: language,
                          onChanged: (String? value) {
                            setState(() {
                              language = value;
                              showSnackBar();
                            });
                          }),
                      title: Text('Dart'),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Radio<String>(
                          value: 'Java',
                          groupValue: language,
                          onChanged: (String? value) {
                            setState(() {
                              language = value;
                              showSnackBar();
                            });
                          }),
                      title: Text('Java'),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      leading: Radio<String>(
                          value: 'PHP',
                          groupValue: language,
                          onChanged: (String? value) {
                            setState(() {
                              language = value;
                              showSnackBar();
                            });
                          }),
                      title: Text('PHP'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  child: Checkbox(
                      value: agree,
                      onChanged: (bool? value) {
                        setState(() {
                          agree = value!;
                        });
                      }),
                ),
                Text('Agree / Disagree')
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /*
  PENJELASAN: fungsi 'dispose()' diatas digunakan agar variabel _controller tidak 
  menimbulkan kebocoran memory.
  */

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$language selected'),
      duration: Duration(seconds: 1),
    ));
  }
}
/*
PENJELASAN: maksud dari "onChanged" pada kodingan diatas adalah kita mengambil setiap nilai
perubahan yang dilakukan pada field. Maksudnya adalah misalnya saat kita baru mengetikan 's'
untuk nama 'sunarto', maka nilai 's' otomatis disimpan pada variabel _name.

Maksud dari "onSumbitted" pada kodingan diatas adalah kita mengambil nilai setelah field 
selesai di isi dan disubmit. Maksudnya adalah saat kita selesai mengisi field dengan nama
'Sunarto', kemudian meng-submitnya maka nilai akan disimpan pada variabel _name, berbeda dengan
'onChange' yang berarti nilai disimpan setiap kali perubahan dilakukan.


*/