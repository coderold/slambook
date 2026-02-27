import 'package:advmobprog_midterms_tp02_molina/widgets/slambook_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Map<String, String>> profiles = [
    {
      "Full name": "Jeff Matthew Molina",
      "Nickname": "Matt",
      "Birthday": "September 2, 2004",
      "Age": "21",
      "Zodiac Sign": "Virgo",
      "Favorite food": "Kare-kare",
      "Favorite color": "Black",
      "Favorite song": "Hold on Til May",
      "Favorite movie": "Everything Everywhere, All at Once",
      "Favorite hobby": "Playing Instruments",
      "Eto ako": "assets/ako.jpg",
      // "Favorite pic": "",
      // "Favorite gala": "",
    },
    {
      "Full name": "John Andrei Dimasaka",
      "Nickname": "Drei",
      "Birthday": "April 21, 2003",
      "Age": "22",
      "Zodiac Sign": "Taurus",
      "Favorite food": "Chef Cury",
      "Favorite color": "Blue",
      "Favorite song": "Eleven Weeks",
      "Favorite movie": "Goodfellas",
      "Favorite hobby": "Gaming",
      "Favorite pic": "assets/andrei_fav.jpg",
      "Favorite gala": "assets/andrei_gala.jpg",
    },
    {
      "Full name": "Angelo Delos Santos Iyo",
      "Nickname": "Elong",
      "Birthday": "October 13, 2002",
      "Age": "23",
      "Zodiac Sign": "Libra",
      "Favorite food": "Tahong",
      "Favorite color": "Black",
      "Favorite song": "Wings by Mac Miller",
      "Favorite movie": "Green Mile",
      "Favorite hobby": "Gaming",
      "Favorite pic": "assets/elong_fav.jpg",
      "Favorite gala": "assets/elong_gala.jpg",
    },
    {
      "Full name": "Ron Sherwin Bugarin",
      "Nickname": "Ron",
      "Birthday": "September 6, 2004",
      "Age": "21",
      "Zodiac Sign": "Virgo",
      "Favorite food": "Pastil",
      "Favorite color": "Black",
      "Favorite song": "Why am I still in LA",
      "Favorite movie": "Evangelion Thrice upon a Time",
      "Favorite hobby": "Gaming",
      "Favorite pic": "assets/ron_fav.jpg",
      "Favorite gala": "assets/ron_gala.jpg",
    },
    {
      "Full name": "Lenardo Jualo",
      "Nickname": "Lek",
      "Birthday": "May 3, 2003",
      "Age": "22",
      "Zodiac Sign": "Taurus",
      "Favorite food": "Kaldereta",
      "Favorite color": "Green",
      "Favorite song": "afterthoughts",
      "Favorite movie": "One piece",
      "Favorite hobby": "Gaming",
      "Favorite pic": "assets/walo_fav.jpg",
      "Favorite gala": "assets/walo_gala.jpg",
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlambookBody(profileData: profiles[_selectedIndex]),
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Matt",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Drei",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Elong",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Ron",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Lek",
          ),
        ],
      ),
    );
  }
}