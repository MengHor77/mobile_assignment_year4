import 'package:flutter/material.dart';
import 'package:mobile_year4/screens/login_view.dart';

class AppSidebar extends StatelessWidget {
  const AppSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // 1. Header
          const UserAccountsDrawerHeader(
            accountName: Text('Nita Vann'),
            accountEmail: Text('account@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmf4NlFls31qGMTqzjbaNgxmoNwClN9140-A&s',
              ),
            ),
          ),

          // 2. Main Menu Items
          _buildMenuItem(context, Icons.home, 'Home'),
          _buildMenuItem(context, Icons.menu_book_rounded, 'Books'),
          _buildMenuItem(context, Icons.receipt_long_rounded, 'Order List'),
          _buildMenuItem(
            context,
            Icons.workspace_premium,
            'Best Selling Books',
          ),
          _buildMenuItem(
            context,
            Icons.picture_as_pdf_rounded,
            'Book PDF Free',
          ),
          _buildMenuItem(context, Icons.support_agent_rounded, 'Contact Us'),
          _buildMenuItem(context, Icons.import_contacts_rounded, 'About Us'),

          // I removed the Divider() from here

          // 3. Logout Item
          ListTile(
            leading: const Icon(Icons.logout_rounded, color: Colors.red),
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const LoginView()),
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
