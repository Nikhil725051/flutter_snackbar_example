import 'package:flutter/material.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Example'),
          backgroundColor: Colors.deepPurple,
        ),
        body: const SnackBarRoute(),
      ),
    );
  }
}

class SnackBarRoute extends StatelessWidget {
  const SnackBarRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          //Create the SnackBar
          final snackBar = SnackBar(
            content: const Text('Hi there! I am a snackbar.'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Place the code to undo the change.
              },
            ),
          );

          // Use ScaffoldMessenger to show the SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}