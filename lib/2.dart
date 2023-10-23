import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: BankPage(),
  ));
}

class BankPage extends StatefulWidget {
  const BankPage({Key? key}) : super(key: key);

  @override
  _BankPageState createState() => _BankPageState();
}

class _BankPageState extends State<BankPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Profile Picture and Bank Account Information
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // Circular Profile Picture
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/profile_image.jpg'), // Replace with your image path
                  ),
                  const SizedBox(width: 16.0), // Add spacing between the profile picture and other content
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello John', // Your user's name
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Forra tag: @john', // Your user's account number
                        style: TextStyle(
                          fontSize: 13.0,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(), // Add a spacer to push the icons to the right
                  // Notification and Support Icons
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.notifications),
                        onPressed: () {
                          // Handle notification icon click
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.support),
                        onPressed: () {
                          // Handle support icon click
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30.0),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Expanded(
              child: Container(
                 constraints: const BoxConstraints(maxWidth: 450),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 67, 95, 69),  // Choose your desired background color
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0),
                  ),
                ),
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                child: const Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center, // Center the text horizontally
                    mainAxisAlignment: MainAxisAlignment.center, // Center the text vertically
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center, // Center the row horizontally
                        children: [
                          Text(
                            'Naira Wallet',
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              height: 1.5,
                            ),
                          ),
                          Icon(Icons.arrow_drop_down, color: Colors.white), // Add the arrow icon
                        ],
                      ),
                      Text(
                        '\$ 12,340.56',
                        style: TextStyle(
                          fontSize: 38.0,
                          color: Colors.white,
                          height: 1.7,
                        ),
                      ),
                      Text(
                        'Account Number: 1234567890',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                            height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
          BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: 'Cards'),
          BottomNavigationBarItem(icon: Icon(Icons.support), label: 'Support'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green, // Color when pressed
        unselectedItemColor: Colors.grey, // Default color
      ),
    );
  }
}
