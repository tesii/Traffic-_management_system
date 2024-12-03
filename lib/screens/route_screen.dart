import 'package:flutter/material.dart';

class RouteScreen extends StatelessWidget {
  final List<Map<String, String>> mockRoutes = [
    {
      'route': 'Kimironko to Kacyiru',
      'time': '15 minutes',
      'distance': '5.3 km',
      'traffic': 'Moderate traffic',
    },
    {
      'route': 'Kigali to Musanze',
      'time': '1 hour 45 minutes',
      'distance': '116 km',
      'traffic': 'Light traffic',
    },
  ];

  IconData _getTrafficIcon(String traffic) {
    if (traffic.contains('Light')) {
      return Icons.traffic;
    } else if (traffic.contains('Moderate')) {
      return Icons.directions_car;
    } else {
      return Icons.warning;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rwanda Routes'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: mockRoutes.length,
        itemBuilder: (context, index) {
          final route = mockRoutes[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(10.0),
              title: Text(
                route['route']!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Time: ${route['time']}'),
                  Text('Distance: ${route['distance']}'),
                  Row(
                    children: [
                      Icon(
                        _getTrafficIcon(route['traffic']!),
                        color: Colors.orange,
                        size: 18,
                      ),
                      SizedBox(width: 5),
                      Text(route['traffic']!),
                    ],
                  ),
                ],
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: Icon(
                  Icons.directions,
                  color: Colors.blueAccent,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey.shade600,
                size: 18,
              ),
            ),
          );
        },
      ),
    );
  }
}
