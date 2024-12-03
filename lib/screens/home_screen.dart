import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart Traffic Navigation'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/route');
              },
              icon: Icon(Icons.navigation, size: 24),
              label: Text('Start Navigation'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                backgroundColor: Colors.green,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/traffic');
              },
              icon: Icon(Icons.traffic, size: 24),
              label: Text('View Traffic Insights'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                backgroundColor: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
