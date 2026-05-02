import 'package:flutter/material.dart';
import 'package:pulso_mty/models/news.dart';

class NewsCard extends StatelessWidget{
  const NewsCard({super.key});

    IconData getIconForNews(String iconName) {
    switch (iconName) {
      case 'construction': return Icons.construction;
      case 'rainy': return Icons.beach_access;
      case 'warning': return Icons.warning_amber;
      default: return Icons.newspaper;
    }
  }

  @override
  Widget build(BuildContext context){

    final news = NewsItem.getSampleData();

    return Column(
      children: news.map((item) => Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Card(

          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.blue[50], 
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Icon(getIconForNews(item.icon), color: Colors.blue[700], size: 24),
                ), 

                const SizedBox(width: 12),

                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    Text(item.description, style: TextStyle(fontSize: 13, color: Colors.grey[700]), maxLines: 2, overflow: TextOverflow.ellipsis),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Text(item.source, style: TextStyle(fontSize: 11, color: Colors.blue[700], fontWeight: FontWeight.w500)),
                        const SizedBox(width: 8),
                        Text(item.timeAgo, style: TextStyle(fontSize: 11, color: Colors.grey)),
                      ],
                    )
                  ],
                ))

              ],
            ),
          ),

        ),
      )).toList(),
    );

  }
}