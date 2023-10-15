import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  IconData icon;
  double? iconSize;
  CustomAppBarIcon({super.key, required this.icon, this.iconSize =25});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.grey.withOpacity(0.3)),
      child: Icon(icon, size: iconSize ),
    );
  }
}
