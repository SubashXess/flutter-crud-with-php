import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage(
      {super.key, required this.uid, required this.name, required this.email});

  final String uid, name, email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'UID: $uid',
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            Text(
              'Name: $name',
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            Text(
              'Email: $email',
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
