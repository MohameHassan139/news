import 'package:flutter/material.dart';

import '../../models/news_item.dart';

class NewsDdtailsBody extends StatelessWidget {
  final int index;
  const NewsDdtailsBody({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(news[index].imgUrl),
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                news[index].author,
                style: Theme.of(context).textTheme.titleMedium,
              )
            ],
          ),
           SizedBox(
            height: 8,
          ),

          Text('Like I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex Like I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, youscandal, youLike I mentioned above, people generally don’t like to lie, so before their brain leaks the truth, they will generally ask a question within a question to talk about something unrelated. This is a common go-to method for people who want to dodge the truth. If you go back and watch Anthony Weiner’s first sex scandal, you',style: Theme.of(context).textTheme.bodyLarge,),
        ],

      ),
    );
  }
}
