import 'package:flutter/material.dart';
import 'package:pulso_mty/models/traffic.dart';

class TrafficCard extends StatelessWidget{

  const TrafficCard({super.key});

  Color getColorForStatus(String color) {
    switch (color) {
      case 'green': return Colors.green;
      case 'yellow': return Colors.orange;
      case 'red': return Colors.red;
      default: return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context){

    final traffic = Traffic.getSampleData();

    return Card(

      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
        
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
        
                Icon(Icons.traffic, color: Colors.blue[700], size: 28),
                const SizedBox(width: 8),
                const Text('Tráfico en tiempo real', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const Spacer(),
                Text('Actualizado: ${traffic.lastUpdate}', style: const TextStyle(fontSize: 12, color: Colors.grey))
              ],
            ), 
        
            const SizedBox(height: 16),
        
            // Lista de vialidades
            ...traffic.roads.map((road) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Row(
                children: [
        
                  Container(width: 12, height: 12, decoration: BoxDecoration(
                    color: getColorForStatus(road.color), 
                    shape: BoxShape.circle
                  )),
        
                  const SizedBox(width: 12),
        
                  SizedBox(width: 140, child: Text(
                    road.name, 
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )),
        
                  Expanded(child: Text(
                    '${road.status} - +${road.delayMinutes}min',
                    style: TextStyle(fontSize: 14, color: getColorForStatus(road.color), fontWeight: FontWeight.w500),
                  )),
        
                  Icon(
                    road.color == 'red' ? Icons.directions_car : Icons.directions_car_outlined,
                    color: getColorForStatus(road.color),
                    size: 20,
                  )
                ],
              )
            ))
        
          ],
        
        ),
      ),

    );
  }
}