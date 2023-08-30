import 'package:flutter/material.dart';
import 'package:text_wrap_auto_size/text_wrap_auto_size.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(builder: (ctx, cns) {
      return const SizedBox(
        height: 86,
        child: TextWrapAutoSize(
          Text(
            "Sie warten am Straßenrand und wollen gehen. Im toten Winkel (freier hinterer Bereich) befindet sich niemand. Was möchten Sie tun…",
            style: TextStyle(fontFamily: 'JosefinSans-Bold'),
          ),
          doShowDebug: true,
          minFontSize: 1,
          maxFontSize: 20,
        ),
      );
    }));
  }
}
