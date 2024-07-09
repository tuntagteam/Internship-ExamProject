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
              width: 80,
              color: Colors.red[50],
              child: Column(
                children: [
                  SidebarButton(Icons.person, 'Customer', Colors.red),
                  SidebarButton(Icons.shopping_cart, 'Cart', Colors.red),
                  SidebarButton(Icons.settings, 'Settings', Colors.red),
                ],
              ),
            ),
            // Main content
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  // Category buttons with circular icons
                  Container(
                    color: Colors.red[100],
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CircularCategoryButton('FOOD', isSelected: true),
                              CircularCategoryButton('DRINK'),
                              CircularCategoryButton('DESSERT'),
                              CircularCategoryButton('OTHER'),
                              CircularCategoryButton('OTHER'),
                              CircularCategoryButton('OTHER'),
                              CircularCategoryButton('OTHER'),
                            ],
                          ),
                        ),
                        Divider(color: Colors.redAccent),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SubCategoryButton('SOUP'),
                              SubCategoryButton('SALAD'),
                              SubCategoryButton('BBQ'),
                              SubCategoryButton('CURRIES'),
                              SubCategoryButton('STIR FRIED'),
                              SubCategoryButton('NOODLES & RICE'),
                              SubCategoryButton('SPECIAL'),
                            ],
                          ),
                        ),
                      ],
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
                          childAspectRatio: 1,
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
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.red[100],
                    child: Column(
                      children: [
                        Text(
                          'LOGO POS',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: NewOrderSection()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SidebarButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  SidebarButton(this.icon, this.label, this.color);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(icon, color: color),
          SizedBox(height: 4),
          Text(label, style: TextStyle(color: color, fontSize: 12)),
        ],
      ),
    );
  }
}

class CircularCategoryButton extends StatelessWidget {
  final String label;
  final bool isSelected;

  CircularCategoryButton(this.label, {this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: isSelected ? Colors.red : Colors.red[200],
            child: CircleAvatar(
              radius: 26,
              backgroundColor: Colors.red[50],
            ),
          ),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.red : Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class SubCategoryButton extends StatelessWidget {
  final String label;

  SubCategoryButton(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        label,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
      ),
    );
  }
}