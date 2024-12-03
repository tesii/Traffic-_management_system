import 'package:flutter/material.dart';

class TrafficScreen extends StatelessWidget {
  final List<Map<String, String>> mockTrafficData = [
    {
      'location': 'Nyabugogo Market',
      'issue': 'Heavy congestion due to market activities and peak hours.',
      'icon': 'traffic',
    },
    {
      'location': 'Kigali-Rusumo Road',
      'issue': 'Road construction causing traffic delays and diversions.',
      'icon': 'construction',
    },
    {
      'location': 'Kigali-Musanze Road',
      'issue': 'Mudslides and weather-related disruptions slowing down traffic.',
      'icon': 'terrain',
    },
    {
      'location': 'Kigali Arena',
      'issue': 'Increased traffic during major events and sports games.',
      'icon': 'event',
    },
    {
      'location': 'Remera - Kacyiru Junction',
      'issue': 'Heavy congestion during rush hours, especially in the evening.',
      'icon': 'access_time',
    },
  ];

  IconData _getIcon(String iconName) {
    switch (iconName) {
      case 'construction':
        return Icons.construction;
      case 'terrain':
        return Icons.terrain;
      case 'event':
        return Icons.event;
      case 'access_time':
        return Icons.access_time;
      default:
        return Icons.traffic;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Traffic Insights in Rwanda'),
        backgroundColor: Colors.green.shade700,
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: mockTrafficData.length,
        itemBuilder: (context, index) {
          final trafficData = mockTrafficData[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
            child: ListTile(
              contentPadding: EdgeInsets.all(10.0),
              title: Text(
                trafficData['location']!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
              subtitle: Text(
                trafficData['issue']!,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.green.shade100,
                child: Icon(
                  _getIcon(trafficData['icon']!),
                  color: Colors.green.shade900,
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
