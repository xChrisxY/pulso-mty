import 'package:flutter/material.dart';
import 'package:pulso_mty/models/weather.dart';

class WeatherCard extends StatelessWidget {

  const WeatherCard({super.key});

  @override 
  Widget build(BuildContext context){

    final weather = Weather.getSampleData();

    return Card(

      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            Row(
              children: [
                Icon(Icons.wb_sunny, color: Colors.orange[600], size: 28),
                const Text("Clima ahora", style: TextStyle(fontSize: 12, color: Colors.grey)),
                const Spacer(), // Empuja el contenido hacia los extremos
                Text('Última actualización: ${weather.lastUpdate}', style: const TextStyle(fontSize: 12, color: Colors.grey))
              ],
            ),
        
            const SizedBox(height: 16),
        
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
        
                Text('${weather.temperature.toInt()}', style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
        
                const SizedBox(width: 16),
        
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sensación: ${weather.heatIndex.toInt()}', style: const TextStyle(fontSize: 16)),
                    const SizedBox(height: 4),
                    Text('${weather.condition}', style: const TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                )
        
              ],
            ),
        
            const SizedBox(height: 12),
        
            Row(
              children: [
                const Icon(Icons.water_drop, size: 20, color: Colors.blue),
                const SizedBox(width: 14),
                Text('Humedad: ${weather.humity}%')
              ],
            ),
        
            const SizedBox(height: 12),
        
            if (weather.heatIndex >= 40)
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.red[50],
                  borderRadius: BorderRadius.circular(8), 
                  border: Border.all(color: Colors.red[200]!)
                ),
                child: Row(
                  children: [
                    Icon(Icons.warning, color: Colors.red[600], size: 20,),
                    Expanded(child: Text(
                      'Alerta: Calor extremo. Evita exponert al sol de 11am a 4pm',
                      style: TextStyle(fontSize: 12, color: Colors.red[800]),
                    ))
                  ],
                ),
              )
              
          ],
        ),
      )


    );

  }

}