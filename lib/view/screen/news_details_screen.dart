import 'package:flutter/material.dart';
import 'package:payment/models/news_item.dart';

import '../widget/news_details_app_bar.dart';

class NewsDetailsScreen extends StatelessWidget {
  final NewsItem newsItem;
   const NewsDetailsScreen({super.key, required this.newsItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        NewsDetailsAppBar(newsItem: newsItem)
      ]),
    );
  }
}
