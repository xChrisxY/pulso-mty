
import 'package:flutter/material.dart';
import 'package:pulso_mty/widgets/news_card.dart';
import 'package:pulso_mty/widgets/traffic_card.dart';
import 'package:pulso_mty/widgets/weather_card.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: const Text("Monterrey Hoy!"),
        actions: [
          IconButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Actualizando..."))
            );
          }, 
          icon: const Icon(Icons.refresh))
        ],
      ),

      body: SingleChildScrollView(

        child: Column(
          children: [

            const WeatherCard(),

            const SizedBox(height: 16),

            const TrafficCard(),
            
            const NewsCard(),
          ],
        ),

      ),

    );
  }

} 