import 'package:flutter/material.dart';

class ChangeProfilePicturePage extends StatelessWidget {
  const ChangeProfilePicturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD0BCFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // TODO: Implement "Choose from Gallery" functionality
                },
                icon: Icon(Icons.add),
                label: Text("Choose from Gallery"),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16),
                  primary: Colors.white,
                  onPrimary: Color(0xffD0BCFF),
                  elevation: 5,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // TODO: Implement "Add from Camera" functionality
                },
                icon: Icon(Icons.add),
                label: Text("Add from Camera"),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(16),
                  primary: Colors.white,
                  onPrimary: Color(0xffD0BCFF),
                  elevation: 5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
