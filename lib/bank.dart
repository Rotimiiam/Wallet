import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: BankPage(),
  ));
}

class TransactionItem {
  final bool isDebit;
  final String description;
  final String amount;

  TransactionItem({
    required this.isDebit,
    required this.description,
    required this.amount,
  });
}

class BankPage extends StatefulWidget {
  const BankPage({Key? key}) : super(key: key);

  @override
  _BankPageState createState() => _BankPageState();
}

class _BankPageState extends State<BankPage> {
  int _currentIndex = 0;

  final List<TransactionItem> transactions = [
    TransactionItem(
      isDebit: true,
      description: 'Purchase at Store',
      amount: '-\$50.00',
    ),
    TransactionItem(
      isDebit: false,
      description: 'Salary Deposit',
      amount: '+\$1,000.00',
    ),
    TransactionItem(
      isDebit: true,
      description: 'Online Shopping',
      amount: '-\$150.00',
    ),
    TransactionItem(
      isDebit: false,
      description: 'Refund from XYZ Inc.',
      amount: '+\$20.00',
    ),
  ];

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
            const SizedBox(height: 10.0),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Container(
                constraints: const BoxConstraints(maxWidth: 450),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 67, 95, 69), // Choose your desired background color
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
GridView.count(
  crossAxisCount: 2, // Display 2 items in each row
  crossAxisSpacing: 6.0, // Add horizontal spacing
  mainAxisSpacing: 5.0, // Add vertical spacing
  childAspectRatio: 2.1, // Adjust this value to control the height of the boxes
  padding: const EdgeInsets.all(16.0),
  shrinkWrap: true,
  children: [
    _buildColoredBox(
      color: Colors.lightGreen,
      icon: Icons.add_circle,
      text: 'Add Money',
    ),
    _buildColoredBox(
      color: Colors.black,
      icon: Icons.send,
      text: 'Send Money',
    ),
  ],
),

GridView.count(
  crossAxisCount: 3,
  padding: const EdgeInsets.all(16.0),
  shrinkWrap: true,
  children: [
    _buildIconBox(
      icon: Icons.request_page,
      text: 'Request',
    ),
    _buildIconBox(
      icon: Icons.payment,
      text: 'Bill Payments',
    ),
    _buildIconBox(
      icon: Icons.receipt_long,
      text: 'Generate Invoice',
    ),
  ],
),

// Transaction List
ListView.builder(
  shrinkWrap: true,
  itemCount: transactions.length,
  itemBuilder: (context, index) {
    final transaction = transactions[index];
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(
            transaction.isDebit ? Icons.remove : Icons.add,
            color: transaction.isDebit ? Colors.red : Colors.green,
          ),
          title: Text(transaction.description),
          trailing: Text(
            transaction.amount,
            style: TextStyle(
              color: transaction.isDebit ? Colors.red : Colors.green,
            ),
          ),
        ),
        const Divider( // Add a Divider between entries
          color: Colors.grey,
          thickness: 0.5, // Adjust the thickness as needed
        ),
      ],
    );
  },
)

          ],
        ),
      ),

      // ... Bottom Navigation Bar ...

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet), label: 'Wallet'),
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

Widget _buildIconBox({required IconData icon, required String text}) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(8.0), // Add padding around the box
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, // Border color
            width: 1.0, // Border width
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // Background color for the circular border
                borderRadius: BorderRadius.circular(50.0),
                border: Border.all(
                  color: Colors.black, // Border color for the circular border
                  width: 1.0, // Border width for the circular border
                ),
              ),
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                icon,
                size: 32.0,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
Widget _buildColoredBox({required Color color, required IconData icon, required String text}) {
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        width: 100.0, // Set a fixed width for the boxes
        decoration: BoxDecoration(
          color: color, // Set the background color
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                icon,
                size: 16.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 8.0), // Add spacing between icon and text
            Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}



}
