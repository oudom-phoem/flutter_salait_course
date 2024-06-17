import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: const [
          Icon(Icons.notifications),
          Icon(Icons.settings),
        ],
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Oudom Phoem'),
              accountEmail: Text('oudomphoem@gmail.cm'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/oudom.jpg'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
            ),
          ],
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CardProduct(),
            CardProduct(),
            CardProduct(),
            CardProduct(),
            CardProduct(),
            CardProduct(),
            CardProduct(),
            CardProduct(),
            CardProduct(),
            CardProduct(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.logout), label: 'Logout'),
        ],
      ),
    );
  }
}

class CardProduct extends StatelessWidget {
  const CardProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(2, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Buy Now!')),
                Text(
                  'Apple Airpods Max',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Price: 549.00 dollar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Rating: 4.5',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Image.asset(
              'assets/images/airpods_max.png',
              width: 150,
            )
          ],
        ),
      ),
    );
  }
}
