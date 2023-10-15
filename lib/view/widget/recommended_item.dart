import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/news_item.dart';
import '../screen/news_details_screen.dart';

class RocommmendedItem extends StatelessWidget {
  NewsItem item;
   RocommmendedItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: () => Navigator.of(context, rootNavigator: true).push(
          CupertinoPageRoute(
              builder: (_) => NewsDetailsScreen(newsItem: item))),

      child: Row(
        
        children: [
          
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image(
              height: 120,
              width: 150,
            fit: BoxFit.cover,
              image: NetworkImage(item.imgUrl,),
                
            ),
          ),
              const SizedBox(
            width: 12,
          ),
    
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.category,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 8,
                
                ),
                Text(item.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: Theme.of(context)
                      .textTheme
                      .titleLarge,
                
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    Text(
                      item.author,
                style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.grey),
    
                    ),
                    Icon(
                      Icons.verified,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      item.time,
                style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.grey),
    
                    ),
                  ],
                ),
                            
              ],
            ),
          )
        ],
      ),
    );
  }
}
