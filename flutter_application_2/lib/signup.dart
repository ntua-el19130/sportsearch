import 'package:flutter/material.dart';
import 'package:flutter_application_2/dashboard.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0BCFF),
      appBar: AppBar(
        title: const Text('Signup'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('image/logo.png'),
              const Divider(color: Color(0xffD0BCFF)),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Username", border: OutlineInputBorder()),
              ),
              const Divider(color: Color(0xffD0BCFF)),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Password", border: OutlineInputBorder()),
              ),
              const Divider(color: Color(0xffD0BCFF)),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Name", border: OutlineInputBorder()),
              ),
              const Divider(color: Color(0xffD0BCFF)),
              const TextField(
                decoration: InputDecoration(
                    hintText: "E-mail", border: OutlineInputBorder()),
              ),
              const Divider(color: Color(0xffD0BCFF)),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Date of Birth", border: OutlineInputBorder()),
              ),
              const Divider(color: Color(0xffD0BCFF)),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Gender", border: OutlineInputBorder()),
              ),
              const Divider(color: Color(0xffD0BCFF)),
              const Divider(color: Color(0xffD0BCFF)),
              const Divider(color: Color(0xffD0BCFF)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF4f378b),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const DashboardPage();
                      },
                    ),
                  );
                },
                child: const Text('Signup'),
              ),
              const Divider(color: Color(0xffD0BCFF)),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('This is the row');
                },
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.sports_basketball_rounded,
                        size: 60,
                        color: Color(0XFF4f378b),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
