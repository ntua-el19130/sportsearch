import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class ChangeProfilePicturePage extends StatelessWidget {
    const ChangeProfilePicturePage(); // Add const keyword here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Profile Picture'),
        backgroundColor: Color(0XFF4f378b),
      ),
      body: Container(
        color: Color(0xffD0BCFF),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        final ImagePicker _picker = ImagePicker(); 
                        final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                         if (image != null) { 
                          File file = File(image.path); 
                          String dir = (await getApplicationDocumentsDirectory()).path + "/images"; await Directory(dir).create(recursive: true); 
                          String newPath = "$dir/${DateTime.now().millisecondsSinceEpoch}.jpg"; file.copy(newPath); }},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0XFF4f378b),
                        elevation: 4,
                        shape: CircleBorder(),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Choose from Gallery',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {},
                      style: ElevatedButton.styleFrom(
                        primary: Color(0XFF4f378b),
                        elevation: 4,
                        shape: CircleBorder(),
                      ),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Add from Camera',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
