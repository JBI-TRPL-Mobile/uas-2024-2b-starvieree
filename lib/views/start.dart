import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200.0,
              width: double.infinity,
              color: Colors.grey[300],
              child: Center(
                child: Icon(
                  Icons.image,
                  size: 100.0,
                  color: Colors.grey[700],
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Text('APLIKASI',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            SizedBox(height: 20.0),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/signin');
                  },
                  child: Text("Sign in"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: Text("Sign up"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}