import 'package:flutter/material.dart';

class FindFriends extends StatelessWidget {
  const FindFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is the find friends page'),
      ),
      body: const Center(
        child: Text('Find em'),
      ),
    );
  }
}
