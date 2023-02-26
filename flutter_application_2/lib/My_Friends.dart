/*import 'package:flutter/material.dart';
import 'dart:math';

class MyFriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD0BCFF),
      appBar: AppBar(
        title: Text('My Friends'),
      ),
      body: Column(
        children: [
          UserCard(name: 'Ahmed'),
          UserCard(name: 'Karen'),
          UserCard(name: 'Chad'),
          UserCard(name: 'Andrew'),
          UserCard(name: 'Maria'),
          UserCard(name: 'Joseph'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
  backgroundColor: Color(0xFF4F378B),
),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class UserCard extends StatelessWidget {
  final String name;

  UserCard({required this.name});

  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber = random.nextInt(7) + 1;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Color(0xffD0BCFF),
                  backgroundImage: AssetImage('image/avatar$randomNumber.png'),
                ),
              ),
            ),
            Text(name),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat),
            ),
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';
class MyFriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD0BCFF),
      appBar: AppBar(
        title: Text('My Friends'),
      ),
      body: Column(
        children: [
          UserCard(name: 'Ahmed'),
          UserCard(name: 'Karen'),
          UserCard(name: 'Chad'),
          UserCard(name: 'Andrew'),
          UserCard(name: 'Maria'),
          UserCard(name: 'Joseph'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
  onPressed: () {},
  child: Icon(Icons.add),
  backgroundColor: Color(0xFF4F378B),
),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class UserCard extends StatelessWidget {
  final String name;

  UserCard({required this.name});

  @override
  Widget build(BuildContext context) {
    String avatarImage;
    switch (name.toLowerCase()) {
      case 'ahmed':
        avatarImage = 'avatar1.png';
        break;
      case 'karen':
        avatarImage = 'avatar6.png';
        break;
      case 'chad':
        avatarImage = 'avatar2.png';
        break;
      case 'andrew':
        avatarImage = 'avatar3.png';
        break;
      case 'maria':
        avatarImage = 'avatar8.png';
        break;
      case 'joseph':
        avatarImage = 'avatar5.png';
        break;
      default:
        avatarImage = 'avatar7.png';
        break;
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  backgroundColor: Color(0xffD0BCFF),
                  backgroundImage: AssetImage('image/$avatarImage'),
                ),
              ),
            ),
            Text(name),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat),
            ),
          ],
        ),
      ),
    );
  }
}


