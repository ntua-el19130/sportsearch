import 'package:flutter/material.dart';
import 'package:flutter_application_2/login_page.dart';
import 'package:flutter_application_2/find_people.dart';
import 'package:flutter_application_2/matches/matches_screen.dart';
import 'package:flutter_application_2/My_Sports_Page.dart';
import 'package:flutter_application_2/My_Teams_Page.dart';
import 'package:flutter_application_2/My_Profile.dart';
import 'package:flutter_application_2/My_Friends.dart';
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const FindPeople();
                },
              ),
            );
          },
          child: SizedBox(
            child: Image.asset(
              'image/logo3.png',
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text(
          '         Start finding people!',
          style: TextStyle(color: Color(0xffD0BCFF), fontSize: 21),
        ),
        backgroundColor: const Color(0XFF4f378b),
      ),
      backgroundColor: const Color.fromARGB(255, 125, 101, 182),
      drawer: Drawer(
        backgroundColor: const Color(0XFF4f378b),
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('image/logo2.png')),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Color(0xffD0BCFF),
              ),
              title: const Text(
                'D A S H B O A R D ',
                style: TextStyle(color: Color(0xffD0BCFF), fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const login_page();
                    },
                  ),
                );
              },
            ),
            const Divider(color: Color(0xffD0BCFF)),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: Color(0xffD0BCFF),
              ),
              title: const Text(
                'P R O F I L E',
                style: TextStyle(color: Color(0xffD0BCFF), fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const MyProfilePage();
                    },
                  ),
                );
              },
            ),
            const Divider(color: Color(0xffD0BCFF)),
            ListTile(
              leading: const Icon(
                Icons.people,
                color: Color(0xffD0BCFF),
              ),
              title: const Text(
                'F R I E N D S ',
                style: TextStyle(color: Color(0xffD0BCFF), fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return  MyFriendsPage();
                    },
                  ),
                );
              },
            ),
            const Divider(color: Color(0xffD0BCFF)),
            ListTile(
              leading: const Icon(
                Icons.message,
                color: Color(0xffD0BCFF),
              ),
              title: const Text(
                'M E S S A G E S ',
                style: TextStyle(color: Color(0xffD0BCFF), fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const MatchesScreen();
                    },
                  ),
                );
              },
            ),
            const Divider(color: Color(0xffD0BCFF)),
            ListTile(
              leading: const Icon(
                Icons.groups,
                color: Color(0xffD0BCFF),
              ),
              title: const Text(
                'T E A M S ',
                style: TextStyle(color: Color(0xffD0BCFF), fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const MyTeamsPage();
                    },
                  ),
                );
              },
            ),
            const Divider(color: Color(0xffD0BCFF)),
            ListTile(
              leading: const Icon(
                Icons.sports_baseball_rounded,
                color: Color(0xffD0BCFF),
              ),
              title: const Text(
                'S P O R T S ',
                style: TextStyle(color: Color(0xffD0BCFF), fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const My_Sports_Page();
                    },
                  ),
                );
              },
            ),
            const Divider(color: Color(0xffD0BCFF)),
            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Color(0xffD0BCFF),
              ),
              title: const Text(
                'L O G O U T ',
                style: TextStyle(color: Color(0xffD0BCFF), fontSize: 18),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const login_page();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
//test