import 'package:flutter/material.dart';
import '../function/option_dialog.dart';

class ItemCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return OptionsDialog();
          },
        );
      },
      child: Card(
        color: Colors.red[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fastfood, size: 50, color: Colors.white),
            SizedBox(height: 8),
            Text('ITEM NAME', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 4),
            Text('100.-', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}