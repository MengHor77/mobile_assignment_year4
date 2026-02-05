import 'package:flutter/material.dart';
import 'package:mobile_year4/widgets/app_sidebar.dart'; // Import your new widget

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      // Call the component from the widgets folder
      drawer: const AppSidebar(), 
      body: const Center(child: Text("Swipe from left or tap menu")),
    );
  }
}