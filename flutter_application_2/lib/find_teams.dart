import 'package:flutter/material.dart';

class FindTeams extends StatelessWidget {
  const FindTeams({Key? key});

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
