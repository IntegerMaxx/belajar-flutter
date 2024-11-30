import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(const myApp());
// }

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("MainAxisAlignment.spaceEvenly"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.share,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_up,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_down,
                  size: 24.0,
                ),
              ],
            ),
            SizedBox(height: 40),
            Text("MainAxisAlignment.spaceAround"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.share,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_up,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_down,
                  size: 24.0,
                ),
              ],
            ),
            SizedBox(height: 40),
            Text("MainAxisAlignment.spaceBetween"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  Icons.share,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_up,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_down,
                  size: 24.0,
                ),
              ],
            ),
            SizedBox(height: 40),
            Text("MainAxisAlignment.start"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.share,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_up,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_down,
                  size: 24.0,
                ),
              ],
            ),
            SizedBox(height: 40),
            Text("MainAxisAlignment.center"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.share,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_up,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_down,
                  size: 24.0,
                ),
              ],
            ),
            SizedBox(height: 40),
            Text("MainAxisAlignment.end"),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.share,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_up,
                  size: 24.0,
                ),
                const Icon(
                  Icons.thumb_down,
                  size: 24.0,
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.developer_board,
                  size: 24.0,
                ),
                Icon(
                  Icons.developer_board,
                  size: 24.0,
                ),
                Icon(
                  Icons.developer_board,
                  size: 24.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
