import 'package:flutter/material.dart';
import 'category_button.dart';
import 'item_card.dart';
import 'new_order_section.dart';

class POSPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            // Sidebar
            Container(
              width: 60,
              color: Colors.red[50],
              child: Column(
                children: [
                  SidebarButton(Icons.shopping_cart, Colors.red),
                  SidebarButton(Icons.restaurant_menu, Colors.red),
                  SidebarButton(Icons.settings, Colors.red),
                ],
              ),
            ),
            // Main content
            Expanded(
              child: Column(
                children: [
                  // Category buttons
                  Container(
                    color: Colors.red[100],
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryButton('FOOD'),
                          CategoryButton('DRINK'),
                          CategoryButton('DESSERT'),
                          CategoryButton('OTHER'),
                          CategoryButton('OTHER'),
                          CategoryButton('OTHER'),
                          CategoryButton('OTHER'),
                        ],
                      ),
                    ),
                  ),
                  // Subcategory buttons
                  Container(
                    color: Colors.red[50],
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryButton('SOUP'),
                          CategoryButton('SALAD'),
                          CategoryButton('BBQ'),
                          CategoryButton('CURRIES'),
                          CategoryButton('STIR FRIED'),
                          CategoryButton('NOODLES & RICE'),
                          CategoryButton('SPECIAL'),
                        ],
                      ),
                    ),
                  ),
                  // Items grid
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        padding: EdgeInsets.all(8),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                        ),
                        itemCount: 9,
                        itemBuilder: (context, index) {
                          return ItemCard();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // New order section
            Container(
              width: 300,
              color: Colors.white,
              child: NewOrderSection(),
            ),
          ],
        ),
      ),
    );
  }
}

class SidebarButton extends StatelessWidget {
  final IconData icon;
  final Color color;

  SidebarButton(this.icon, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IconButton(
        icon: Icon(icon),
        color: color,
        onPressed: () {},
      ),
    );
  }
}