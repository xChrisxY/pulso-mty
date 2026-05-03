class Alert {

  final String title;
  final String description;
  final String severity; // "high", "medium", "low"

  Alert({
    required this.title,
    required this.description, 
    required this.severity
  });

  static List<Alert> getSampleData(){
    return [
      Alert(
        title: "🌧️ Lluvia probable esta tarde",
        description: "A partir de las 5pm, tomar precauciones en Av. Constitución y Gonzalitos",
        severity: "medium",
      ),
      Alert(
        title: "⚠️ Contingencia ambiental fase 1",
        description: "Restricción vehicular para autos con engomado rojo y terminación 3 y 4",
        severity: "high",
      ),
    ];
  }

}