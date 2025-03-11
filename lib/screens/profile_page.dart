import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String email;
  final String dob;
  final String phone;

  ProfilePage(
      {required this.name,
      required this.email,
      required this.dob,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: $name', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Email: $email', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Date of Birth: $dob', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Phone: $phone', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Edit profile logic
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
