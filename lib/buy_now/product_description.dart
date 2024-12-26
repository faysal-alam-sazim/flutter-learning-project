import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Card(
        elevation: 2,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What’s included?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "By purchasing a 1 month supply of Night Powder you will receive an additional 7 nights free of charge worth SAR 100.",
              ),
              SizedBox(height: 16),
              Text(
                "What’s included?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "By purchasing a 1 month supply of Night Powder you will receive an additional 7 nights free of charge worth SAR 100.",
              ),
              SizedBox(height: 16),
              Text(
                "What’s included?",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                "By purchasing a 1 month supply of Night Powder you will receive an additional 7 nights free of charge worth SAR 100.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
