class TrafficRoad {
  final String name;
  final String status;
  final int delayMinutes;
  final String color;

  TrafficRoad({
    required this.name, 
    required this.status,
    required this.delayMinutes, 
    required this.color
  });
}

class Traffic {
  final List<TrafficRoad> roads;
  final String lastUpdate;

  Traffic({
    required this.roads,
    required this.lastUpdate
  });

  static Traffic getSampleData(){

    return Traffic(
      roads: [
        TrafficRoad(
          name: "Constitución",
          status: "Congestionado",
          delayMinutes: 25,
          color: "red",
        ),
        TrafficRoad(
          name: "Lázaro Cárdenas",
          status: "Ligero",
          delayMinutes: 5,
          color: "green",
        ),
        TrafficRoad(
          name: "Morones Prieto",
          status: "Moderado",
          delayMinutes: 15,
          color: "yellow",
        ),
      ],
      lastUpdate: "9:41 AM",
    );

  }
}