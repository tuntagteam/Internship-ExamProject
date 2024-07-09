import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String category;

  CategoryButton(this.category);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.redAccent,
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        onPressed: () {},
        child: Text(category),
      ),
    );
  }
}