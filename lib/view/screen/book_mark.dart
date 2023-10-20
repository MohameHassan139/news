import 'package:flutter/material.dart';
import 'package:payment/models/news_item.dart';

import '../widget/recommended_item.dart';

class BookMark extends StatelessWidget {
  const BookMark({super.key});

  @override
  Widget build(BuildContext context) {
    final List<NewsItem> fovariteItems =
        news.where((item) => item.isFovarite == true,).toList() ;
    return Scaffold(
      body: SafeArea(
        child: fovariteItems.isEmpty
            ? Center(
                child: Text(
                  'No Bookmark Availale!',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView.separated(
                    itemCount: fovariteItems.length,
                    separatorBuilder: (context, index) => SizedBox(height: 15),
                    itemBuilder: (context, index) => RocommmendedItem(
                          index: news.indexOf(fovariteItems[index]),
                          
                        )),
              ),
      ),
    );
  }
}
