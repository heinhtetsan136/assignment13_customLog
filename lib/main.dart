import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Assignment13"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey,
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center,
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () {
                Logger.info(
                  "This is an info message",
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.black,
              ),

              child: Text("Info"),
            ),
            FilledButton(
              onPressed: () {
                Logger.sucess(
                  "This is a success message",
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.green,
              ),

              child: Text("Success"),
            ),
            FilledButton(
              onPressed: () {
                Logger.warning(
                  "This is a warning message",
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),

              child: Text("Warning"),
            ),
            FilledButton(
              onPressed: () {
                Logger.error(
                  "This is an error message",
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.red,
              ),

              child: Text("Error"),
            ),
          ],
        ),
      ),
    );
  }
}

class Logger {
  static void info(String message) {
    if (kDebugMode) {
      debugPrint('\x1B[30m$message\x1B[0m');
    }
  }

  static void sucess(String message) {
    debugPrint("\x1B[32m$message\x1B[0m");
  }

  static void warning(String message) {
    debugPrint("\x1B[33m$message\x1B[0m");
  }

  static void error(String message) {
    debugPrint("\x1B[31m$message\x1B[0m");
  }
}
