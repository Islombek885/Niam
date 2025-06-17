import 'package:flutter/material.dart';

class SendFuelWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final String imagePath;

  SendFuelWidget({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Image.asset(
            imagePath,
            width: 33,
            height: 33,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
