import "package:flutter/material.dart";

class BankTestApp extends StatelessWidget {
  const BankTestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "OpenSans"),
      title: "Bank App",
      home: const Column(
        children: [Text("Hello, welcome back, Engineer Kennedy")],
      ),
    );
  }
}
