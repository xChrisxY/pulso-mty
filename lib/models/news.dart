class NewsItem {
  final String title;
  final String description;
  final String source;    // "El Norte", "Milenio", etc.
  final String timeAgo;   // "Hace 23 min"
  final String icon;      // Icono a mostrar
  
  NewsItem({
    required this.title,
    required this.description,
    required this.source,
    required this.timeAgo,
    required this.icon,
  });

  static List<NewsItem> getSampleData(){
    return [
      NewsItem(
        title: "Cierran carril en Av. Garza Sada",
        description: "Trabajos de drenaje pluvial entre Félix U. Gómez y Simón Bolívar hasta el viernes",
        source: "El Norte",
        timeAgo: "Hace 23 min",
        icon: "construction",
      ),
      NewsItem(
        title: "Lluvias intensas en Nuevo León",
        description: "SMN activa aviso por tormentas para esta tarde a partir de las 5pm",
        source: "Milenio",
        timeAgo: "Hace 1h",
        icon: "rainy",
      ),
      NewsItem(
        title: "Contingencia ambiental fase 1",
        description: "Ozono alcanza 158 µg/m³. Restricción vehicular en el área metropolitana",
        source: "ABC Noticias",
        timeAgo: "Hace 2h",
        icon: "warning",
      ),
    ];
  }

}
