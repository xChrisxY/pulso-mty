import 'package:flutter/material.dart';
import 'package:pulso_mty/models/alert.dart';

class AlertCard extends StatelessWidget{

  const AlertCard({super.key});

  Color getSeverityColor(String severity) {
    switch (severity) {
      case 'high': return Colors.red;
      case 'medium': return Colors.orange;
      case 'low': return Colors.blue;
      default: return Colors.grey;
    }
  }

  @override 
  Widget build(BuildContext context){

    final alerts = Alert.getSampleData();

    return Card(color: Colors.amber[500], child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(Icons.notifications_active, color: Colors.orange),
                SizedBox(width: 8),
                Text('Alertas activas', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))
              ],
            ),

            const SizedBox(width: 12),

            ...alerts.map((alert) => Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        
                  Container(width: 4, height: 40, decoration: BoxDecoration(
                    color: getSeverityColor(alert.severity),
                    borderRadius: BorderRadius.circular(2)
                  )),
        
                  const SizedBox(width: 12),
        
                  Expanded(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(alert.title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                      const SizedBox(height: 4),
                      Text(alert.description, style: const TextStyle(fontSize: 13))
                    ],
                  ))
                ],
              ),
            ))
        
          ],
        ),
      ),
    );
  }

}