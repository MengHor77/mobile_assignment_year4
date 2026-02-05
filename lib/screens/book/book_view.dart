import 'package:flutter/material.dart';
import 'package:mobile_year4/widgets/app_sidebar.dart';
import 'package:mobile_year4/widgets/book_card.dart'; // Import the reusable part

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> books = [
      {
        'title': 'Flutter Development',
        'author': 'Google Experts',
        'price': 'FREE',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmf4NlFls31qGMTqzjbaNgxmoNwClN9140-A&s',
      },
      {
        'title': 'Dart Programming',
        'author': 'Nita Vann',
        'price': '\$15.00',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmf4NlFls31qGMTqzjbaNgxmoNwClN9140-A&s',
      },
      {
        'title': 'Dart Programming',
        'author': 'Nita Vann',
        'price': '\$15.00',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-mXGvC6eS8jOa3-rWvD6v_J-r5G8v_9XwA&s',
      },
      {
        'title': 'Dart Programming',
        'author': 'Nita Vann',
        'price': '\$15.00',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-mXGvC6eS8jOa3-rWvD6v_J-r5G8v_9XwA&s',
      },

      // Add more books as needed...
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Books'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: const AppSidebar(currentRoute: 'Books'),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: books.length,
        itemBuilder: (context, index) {
          // Calling the reusable component
          return BookCard(book: books[index]);
        },
      ),
    );
  }
}
