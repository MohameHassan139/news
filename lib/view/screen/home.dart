import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payment/view/widget/carousle_silder.dart';

import '../../models/news_item.dart';
import '../widget/app_bar_icon.dart';
import '../widget/recommended_item.dart';
import '../widget/title_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              // titel
              CustomTitle(
                title: 'Breaking News',
              ),

              const SizedBox(
                height: 8,
              ),
              CustomCarousleSlider(
                news: news,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTitle(
                title: 'Recommendation',
              ),
              const SizedBox(
                height: 8,
              ),
              ...news.map((newsItem) {
                final int index = news.indexOf(newsItem);
              print('>>>>>>>> $index <<<<<<<<');

                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: RocommmendedItem(
                    index: index,
                  ),
                );
              }).toList(),

              SizedBox(
                height: 50,
              )
            ],
          ),
        )),
      ),
    );
  }
}

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];
