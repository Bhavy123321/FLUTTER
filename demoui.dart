import 'package:flutter/material.dart';

class Demoui extends StatefulWidget {
  const Demoui({super.key});

  @override
  State<Demoui> createState() => _DemouiState();
}

class _DemouiState extends State<Demoui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
    );
  }
}
