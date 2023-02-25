import 'package:flutter/material.dart';

class AddSportPage extends StatelessWidget {
  const AddSportPage({Key? key}) : super(key: key);

 final TextStyle textStyle = const TextStyle(color: Colors.white, fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0BCFF),
      appBar: AppBar(
        title: const Text('Add a new Sport'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.sports_basketball),
            label: Text('Basketball', style: textStyle),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).appBarTheme.color,
              elevation: 0,
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.sports_football),
            label: Text('Football', style: textStyle),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).appBarTheme.color,
              elevation: 0,
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.directions_run),
            label: Text('Running', style: textStyle),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).appBarTheme.color,
              elevation: 0,
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.sports_volleyball),
            label: Text('Volleyball', style: textStyle),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).appBarTheme.color,
              elevation: 0,
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.sports_tennis),
            label: Text('Tennis', style: textStyle),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).appBarTheme.color,
              elevation: 0,
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
