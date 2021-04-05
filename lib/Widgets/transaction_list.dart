import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:cart_app/Models/transaction.dart';

class TransationList extends StatelessWidget {
  final List<Transcion> transaction;
  TransationList(this.transaction);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 460,
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 2),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '\$${transaction[index].amount.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaction[index].title,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        DateFormat().add_yMEd().format(transaction[index].date),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            );
          },
          itemCount: transaction.length,
        ));
  }
}
