import 'package:flutter/material.dart';
import 'package:flutter_application_2/signup.dart';
import 'package:flutter_application_2/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(primary: const Color(0XFF4f378b))),
    );
  }
}

// ignore: camel_case_types
class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

// ignore: camel_case_types
class _login_pageState extends State<login_page> {
  bool isSwitched = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0BCFF),
      appBar: AppBar(
        title: const Text('                     Login      '),
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
                child: const Text('Login'),
              ),
              const Divider(color: Color(0xffD0BCFF)),
              const Text('Dont have an account?'),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const SignupPage();
                      },
                    ),
                  );
                },
                child: const Text('Sign Up'),
              ),
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
