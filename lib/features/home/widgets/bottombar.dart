import 'package:flutter/material.dart';
import 'package:wow_shopping/features/account/account_page.dart';
import 'package:wow_shopping/features/cart/cart_page.dart';
import 'package:wow_shopping/features/categories/categories_page.dart';
import 'package:wow_shopping/features/home/home_page.dart';
import 'package:wow_shopping/features/wishlist/wishlist_page.dart';


class HomePages extends StatefulWidget {
  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    CategoriesPage(),
    CartPage(),
    WishlistPage(),
    AccountPage(),
  ];

  // Handle tab selection
  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabSelected,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Category',
            ),
                BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
        
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'person',
            ),
          ],
        ),
      ),
    );
  }
}
