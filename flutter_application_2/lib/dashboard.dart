import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD0BCFF),
      drawer: Drawer(
          backgroundColor: const Color(0XFF4f378b),
          child: Column(children: [
            DrawerHeader(child: Image.asset('image/logo2.png')),
            const Divider(color: Color(0xffD0BCFF)),
            const ListTile(
              leading: Icon(
                Icons.home,
                color: Color(0xffD0BCFF),
              ),
              title: Text(
                'D A S H B O A R D ',
                style: TextStyle(color: Color(0xffD0BCFF)),
              ),
            ),
            const Divider(color: Color(0xffD0BCFF)),
            const ListTile(
              leading: Icon(
                Icons.person,
                color: Color(0xffD0BCFF),
              ),
              title: Text(
                'P R O F I L E',
                style: TextStyle(color: Color(0xffD0BCFF)),
              ),
            ),
            const Divider(color: Color(0xffD0BCFF)),
            const ListTile(
              leading: Icon(
                Icons.people,
                color: Color(0xffD0BCFF),
              ),
              title: Text(
                'F R I E N D S ',
                style: TextStyle(color: Color(0xffD0BCFF)),
              ),
            )
          ])),
    );
  }
}
