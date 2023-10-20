import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/news_item.dart';
import '../screen/news_details_screen.dart';

class RocommmendedItem extends StatefulWidget {
  final int index;
  
  RocommmendedItem({super.key, required this.index ,  });

  @override
  State<RocommmendedItem> createState() => _RocommmendedItemState();
}

class _RocommmendedItemState extends State<RocommmendedItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context, rootNavigator: true)
          .push(CupertinoPageRoute(
              builder: (_) => NewsDetailsScreen(index: widget.index)))
          .then((value) {
        setState(() {});
      }),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image(
              height: 120,
              width: 150,
              fit: BoxFit.cover,
              image: NetworkImage(
                news[widget.index].imgUrl,
              ),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news[widget.index].category,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  news[widget.index].title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    Text(
                      news[widget.index].author,
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
                      news[widget.index].time,
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
