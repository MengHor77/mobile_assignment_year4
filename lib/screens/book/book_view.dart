import 'package:flutter/material.dart';
import 'package:mobile_year4/widgets/app_sidebar.dart';

class BookView extends StatelessWidget {
  const BookView({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. We define a list of book data (this could come from a database later)
    final List<Map<String, String>> books = [
      {
        'title': 'Flutter Development',
        'author': 'Google Experts',
        'price': 'FREE',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmf4NlFls31qGMTqzjbaNgxmoNwClN9140-A&s'
      },
      {
        'title': 'Dart Programming',
        'author': 'Nita Vann',
        'price': '\$15.00',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-mXGvC6eS8jOa3-rWvD6v_J-r5G8v_9XwA&s'
      },
      {
        'title': 'Mobile UI Design',
        'author': 'Design Team',
        'price': '\$12.50',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmf4NlFls31qGMTqzjbaNgxmoNwClN9140-A&s'
      },
      {
        'title': 'Firebase Integration',
        'author': 'Cloud Pro',
        'price': '\$20.00',
        'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-mXGvC6eS8jOa3-rWvD6v_J-r5G8v_9XwA&s'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('All Books'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      // 2. Pass 'Books' so the Sidebar logic turns this item BLUE
      drawer: const AppSidebar(currentRoute: 'Books'),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          
          return Card(
            margin: const EdgeInsets.only(bottom: 15),
            elevation: 3,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.network(
                  book['image']!,
                  width: 50,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                book['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Author: ${book['author']}'),
                  const SizedBox(height: 5),
                  Text(
                    book['price']!,
                    style: const TextStyle(
                      color: Colors.blue, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              trailing: ElevatedButton(
                onPressed: () {
                  // Action for viewing details
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),
                child: const Text('View'),
              ),
            ),
          );
        },
      ),
    );
  }
}