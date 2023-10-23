import 'package:flutter/material.dart';
import 'bank.dart'; 

void main() {
  runApp(const MaterialApp(
    home: SignUpPage(),
  ));
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 255, 255),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 120.0),
              Center(
                child: Image.asset(
                  'assets/images/logo.jpg', // Replace with the image path
                  width: 100.0, // Adjust the width as needed
                  height: 100.0, // Adjust the height as needed
                ),
              ),
              const SizedBox(height: 28.0),
              const Center(
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              const Center(
                child: Column(
                  children: [
                    Text(
                      "Hello there,\n",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        height: 0.7,
                      ),
                    ),
            
                    Text(
                      "let's help you set up your account", // Split the text into two lines
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        height: 0.7,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32.0),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'First Name',
                         floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                         labelStyle: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Last Name',
                         floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(),
                         labelStyle: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
               const SizedBox(height: 32.0),
           
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                   floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(),
                   labelStyle: TextStyle(fontSize: 20.0),
                ),
              ),
               const SizedBox(height: 16.0),
              const SizedBox(height: 16.0),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                   floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: const TextStyle(fontSize: 20.0),
                  border: const OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {},
                  ),
                ),
              ),
              const SizedBox(height: 32.0),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                          Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => BankPage()), // Navigate to BankPage
      );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 55, 94, 57), // Set the background color to green
                        padding: const EdgeInsets.all(20.0), // Adjust the button size
                      ),
                      child: const Text(
                        'Create Account',
                        style: TextStyle(
                          fontSize: 20.0, // Adjust the text size
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Center(
                 child:TextButton(
                onPressed: () {},
                child: const Text('Already have an account?', 
                      style: TextStyle(
                      fontSize: 19.0, // Adjust the font size
                      color: const Color.fromARGB(255, 55, 94, 57), // Set the text color to green
                    ),
                    ),
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
