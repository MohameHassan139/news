import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/news_item.dart';
import '../screen/news_details_screen.dart';

class CustomCarousleSlider extends StatefulWidget {
  List<NewsItem> news;
   CustomCarousleSlider({super.key,required this.news});

  @override
  State<CustomCarousleSlider> createState() => _CustomCarousleSliderState();
}

class _CustomCarousleSliderState extends State<CustomCarousleSlider> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = news
        .map((item) => InkWell(
          onTap: () => Navigator.of(context,rootNavigator: true).push(CupertinoPageRoute(builder: (_)=>NewsDetailsScreen(newsItem:item))) ,
          child: Container(
            
            margin: const EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item.imgUrl, fit: BoxFit.cover, width: 1000.0),
                    // categrory
                    Positioned( 
                      top: 10,
                      left: 20,
                      child:Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(16),
                          
                         ),
                        child: Text(item.category, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      ) ,),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Text(item.author,
                                style: TextStyle(color: Colors.white),
                                ),
                                Icon(Icons.verified, color: Theme.of(context).primaryColor,),
                                SizedBox(width: 8,),
                                Text(item.time,
                                      style: TextStyle(color: Colors.white),
                                    ),
                          
                              ],
                            ),
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(200, 0, 0, 0),
                                  Color.fromARGB(0, 0, 0, 0)
                                ],
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                            child: Text(
                              item.title,
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
        ))
        .toList();
    return Container(
      height: 300,
      child: Column(children: [
        Expanded(
          child: CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: news.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width:_current == entry.key? 25.0:12,
                height: 12.0,
                
                margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  borderRadius: _current == entry.key ? BorderRadius.circular(8):null,
                    shape: _current == entry.key? BoxShape.rectangle: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.green)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
