import 'package:flutter/material.dart';

class TargetView extends StatelessWidget {
  const TargetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Target')),
      body: const Center(child: Text('Target')),
    );
  }
}
