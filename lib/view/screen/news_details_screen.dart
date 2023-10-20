import 'package:flutter/material.dart';
import 'package:payment/models/news_item.dart';

import '../widget/news_details_app_bar.dart';
import '../widget/news_details_body.dart';

class NewsDetailsScreen extends StatelessWidget {
  final int index;

   NewsDetailsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Scaffold(
                backgroundColor:   Colors.white,
     
      body: Stack(
        children: [
          Positioned.fill(child: 
          CustomScrollView(slivers: [
            NewsDetailsAppBar(index: index),
            SliverToBoxAdapter(
              child: NewsDdtailsBody(index: index),
            ),
            
          ]),),
          Positioned(
            bottom: 0,
            child: SizedBox(
              height: size.height * 0.25,
              width:  size.width,
              child: DecoratedBox(decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [
                    Colors.white,
                      Colors.white.withOpacity(0),

                  ],),
              ),),
            ),),
        ],
      ),
    );
  }
}
