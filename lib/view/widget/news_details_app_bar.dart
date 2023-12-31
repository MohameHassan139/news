import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:payment/models/news_item.dart';
import 'package:payment/view/widget/app_bar_icon.dart';

class NewsDetailsAppBar extends StatefulWidget {
  final int index;

  NewsDetailsAppBar({super.key, required this.index});

  @override
  State<NewsDetailsAppBar> createState() => _NewsDetailsAppBarState();
}

class _NewsDetailsAppBarState extends State<NewsDetailsAppBar> {
  bool isFovarite = false;

@override
  void initState() {
      isFovarite = news[widget.index].isFovarite;

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    

    return SliverAppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: CustomAppBarIcon(
          icon: Icons.chevron_left,
          iconSize: 30,
          onTap: () => Navigator.of(context).pop(),
        ),
      ),
      // leadingWidth: 40,
      actions: [
        CustomAppBarIcon(
          icon: isFovarite ? Icons.bookmark : Icons.bookmark_border_outlined,
          iconSize: 30,
          onTap: () {
            setState(() {
              isFovarite = !isFovarite;
              news[widget.index] =
                  news[widget.index].copyWith(isFovarite: isFovarite);
              print('>>>>>>>> ${widget.index}  <<<<<<<<');
              print('>>>>>>>> ${news[widget.index].isFovarite}  <<<<<<<<');
              print('>>>>>>>> ${isFovarite}  <<<<<<<<');
            });
          },
        ),
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
                  news[widget.index].imgUrl,
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
              bottom: 50,
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
                      news[widget.index].category,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: size.width * 0.9,
                    child: Text(
                      '${news[widget.index].title} ',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        news[widget.index].author,
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
                        news[widget.index].time,
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
      pinned: true,
      collapsedHeight: size.height * 0.1,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: SizedBox(
          height: 40,
          width: double.infinity,
          child: DecoratedBox(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(36),
                ),
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
