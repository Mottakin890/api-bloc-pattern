import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Bloc Pattern', style: TextStyle(fontWeight: .bold)),
        centerTitle: true,
      ),
    );
  }
}
