import 'package:flutter/material.dart';

class FindTeams extends StatelessWidget {
  const FindTeams({super.key, Key? keyy});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Teams'),
      ),
      body: const Center(
        child: Text('This is the Find Teams page'),
      ),
    );
  }
}
