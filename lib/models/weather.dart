class Weather {
  final double temperature;
  final double heatIndex;
  final String condition;
  final int humity;
  final String lastUpdate;

  Weather({
    required this.temperature,
    required this.heatIndex,
    required this.condition,
    required this.humity,
    required this.lastUpdate,
  });

  static Weather getSampleData(){
    return Weather(temperature: 41.0, heatIndex: 47.0, condition: "Soleado extremo", humity: 35 ,lastUpdate: "9:41 AM");
  }

}