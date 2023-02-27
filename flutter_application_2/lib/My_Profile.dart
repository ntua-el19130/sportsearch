import 'package:flutter/material.dart';
import 'package:flutter_application_2/Change_Profile_Picture.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD0BCFF),
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Stack(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('image/profile.jfif'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 15,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 13,
                      child: IconButton(
                        onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChangeProfilePicturePage()),
                    );},
                        icon: Icon(Icons.add),
                        color: Colors.white,
                        iconSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Trust',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            LinearProgressIndicator(
              value: 0.8,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 10),
            Text(
              'Fun',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            LinearProgressIndicator(
              value: 0.6,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
            SizedBox(height: 20),
            Text(
              'Username: TestUSERNAME',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Name: testname',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'E-mail: test@gmail.com',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Date of Birth: 1/1/2001',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Change Password'),
            ),
          ],
        ),
      ),
    );
  }
}

