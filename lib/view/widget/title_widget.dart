import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  
  String title;
   CustomTitle({super.key,required this.title });

  @override
  Widget build(BuildContext context) {
    return    Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'view all',
                    ),
                  )
                ],
              );
             
  }
}