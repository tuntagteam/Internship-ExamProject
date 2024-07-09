import 'package:flutter/material.dart';

class NewOrderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.red[50],
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.red[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('New Order', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text('Customer: 5'),
                Text('Table: 01'),
                Text('29 December 2022'),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: 4,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
                  title: Text('ITEM NAME'),
                  subtitle: Text('option1, option2'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('100.-'),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove_circle_outline, color: Colors.red),
                            onPressed: () {},
                          ),
                          Text('1'),
                          IconButton(
                            icon: Icon(Icons.add_circle_outline, color: Colors.red),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                OrderSummaryRow('Subtotal', '400.-'),
                OrderSummaryRow('Service Charge', '50.-'),
                OrderSummaryRow('VAT', '20.-'),
                Divider(),
                OrderSummaryRow('Grand Total', '470.-', isBold: true),
                SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.redAccent,
                    backgroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  ),
                  child: Text('Order'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OrderSummaryRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;

  OrderSummaryRow(this.label, this.value, {this.isBold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
          Text(value, style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
        ],
      ),
    );
  }
}