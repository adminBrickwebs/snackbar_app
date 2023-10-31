import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(useMaterial3: true), home: const FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FilledButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('My Snackbar'),
                behavior: SnackBarBehavior.floating,
                margin:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                dismissDirection: DismissDirection.down,
                backgroundColor: Colors.red,
                shape: const StadiumBorder(),
                elevation: 5,
                padding: const EdgeInsets.all(20),
                onVisible: () {
                  print("visible");
                },
                showCloseIcon: true,
                action: SnackBarAction(label: 'accept', onPressed: () {}),
              ),
            );
          },
          child: const Text('Visible Snackbar'),
        ),
      ),
    );
  }
}
