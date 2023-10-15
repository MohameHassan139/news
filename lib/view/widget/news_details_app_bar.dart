import 'package:flutter/material.dart';
import 'package:payment/models/news_item.dart';
import 'package:payment/view/widget/app_bar_icon.dart';

class NewsDetailsAppBar extends StatelessWidget {
  NewsItem newsItem;
  NewsDetailsAppBar({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SliverAppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: CustomAppBarIcon(icon: Icons.chevron_left, iconSize: 30),
      ),
      // leadingWidth: 40,
      actions: [
        CustomAppBarIcon(icon: Icons.bookmark_border_outlined, iconSize: 30),
        const SizedBox(
          width: 6,
        ),
        CustomAppBarIcon(icon: Icons.more_vert_outlined, iconSize: 30),
        const SizedBox(
          width: 6,
        ),
      ],
      expandedHeight: size.height * 0.4,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Positioned.fill(
              child: Image(
                image: NetworkImage(
                  newsItem.imgUrl,
                ),
                fit: BoxFit.cover,
              ),
            ),
            const Positioned.fill(
              child: Opacity(
                opacity: 0.15,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      newsItem.category,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 12,),
                  SizedBox(
                    width: size.width * 0.9,
                    child: Text(
                      '${newsItem.title} ',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  Row(
                    children: [
                      Text(
                        newsItem.author,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.verified,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        newsItem.time,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Container(
          height: size.height * 0.09,
          decoration: BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
        ),),
    );
  }
}
