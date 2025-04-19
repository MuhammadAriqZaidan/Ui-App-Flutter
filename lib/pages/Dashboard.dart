// ignore: file_names, depend_on_referenced_packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:susu_etawa/pages/List-Distributor.dart';
import 'package:susu_etawa/pages/ProfilePage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomepageContent(),
    const DistributorListPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        height: 70,
        color: const Color(0xFF3C7A3C),
        items: const [
          Icon(Icons.home, size: 30, color: Colors.white,),
          Icon(Icons.shopping_cart, size: 30, color: Colors.white,),
          Icon(Icons.person, size: 30, color: Colors.white,),
        ],
      ),
    );
  }
}

class HomepageContent extends StatelessWidget {
  const HomepageContent({super.key});

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("Beranda"),
      ),
            body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text('adfuwery')),
          Text('adfuwery'),
          Text('adfuwery'),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black
              ),
            ),
          ),

          ElevatedButton(onPressed: () {
            // aksi dari si button
          }, child: Text('Fahri saputra'))
        ],
      ),
    floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add),),
    );
  }
}
