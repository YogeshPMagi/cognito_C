import 'package:flutter/material.dart';
 // <-- Import the login screen
import 'package:myapp/screens/main_screen.dart'; // <-- Import the main screen


class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create an account')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              children: [
                Expanded(
                  child: TextField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
             ),
                      labelText: 'First name',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
             ),
                      labelText: 'Last name',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
             ),
                labelText: 'Email address',
              ),
            ),
          
 const SizedBox(height: 30),

const Row(
              children: [
                Expanded(
                  child: TextField(
                    
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
             ),
                      labelText: 'Password',
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
             ),
                      labelText: 'Confirm your password',
                    ),
                  ),
                ),
              ],
),


            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Handle sign-up logic
                // After successful sign-up, navigate to MainScreen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MainScreen()),
                );
              },
              child: const Text('Create an account'),
            ),
            TextButton(
              onPressed: () {
                // Navigate back to the Login screen
                Navigator.pop(context);
              },
              child: const Text('Already have an account? Log in instead'),
            ),
          ],
        ),
      ),
    );
  }
}
