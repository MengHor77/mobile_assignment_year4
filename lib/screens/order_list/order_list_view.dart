import 'package:flutter/material.dart';
import 'package:mobile_year4/widgets/app_sidebar.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Order List'), backgroundColor: Colors.blue, foregroundColor: Colors.white),
      drawer: const AppSidebar(currentRoute: 'Order List'),
      body: const Center(child: Text('Your Recent Orders', style: TextStyle(fontSize: 20))),
    );
  }
}