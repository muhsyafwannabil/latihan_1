import 'package:flutter/material.dart';

class TicketsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Tickets")),
      body: Center(child: Text("List of your tickets will appear here.")),
    );
  }
}
