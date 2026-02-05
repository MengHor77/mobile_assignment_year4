import 'package:flutter/material.dart';
import 'package:mobile_year4/screens/login_view.dart'; 
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      drawer: Drawer(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Nita Vann'),
              accountEmail: Text('account@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmf4NlFls31qGMTqzjbaNgxmoNwClN9140-A&s',
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.blue),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.menu_book_rounded, color: Colors.blue),
              title: const Text('Books'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.receipt_long_rounded,
                color: Colors.blue,
              ),
              title: const Text('Order List'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium, color: Colors.blue),
              title: const Text('Best Selling Books'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.picture_as_pdf_rounded,
                color: Colors.blue,
              ),
              title: const Text('Book PDF Free'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.support_agent_rounded,
                color: Colors.blue,
              ),
              title: const Text('Contact Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.import_contacts_rounded,
                color: Colors.blue,
              ),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.logout_rounded, // The standard logout icon
                color: Colors.red, // Red color signals an "exit" action
              ),
              title: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // 1. Close the drawer first
                Navigator.pop(context);

                // 2. Redirect to Login and remove all previous screens from memory
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginView()),
                  (route) => false, // This clears the entire navigation stack
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(child: Text("swip from left or tap menu")),
    );
  }
}
