import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen1 extends StatefulWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  @override
  State<LoginScreen1> createState() => _LoginScreen1State();
}

class _LoginScreen1State extends State<LoginScreen1> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 230,
                color: Colors.amber,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/logo.png"),
                  const SizedBox(
                    height: 50,
                    width: 50,
                  ),
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Colors.red,
                  blurRadius: 4,
                  offset: Offset(4, 8), // Shadow position
                ),
              ],
            ),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.account_balance),
                      hintText: 'Full name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white),
                  controller: _controller,
                  onSubmitted: (String value) {
                    debugPrint(value);
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.account_balance),
                      hintText: 'Full name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.account_balance),
                hintText: 'Full name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white),
          ),
          TextField(
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.account_balance),
                hintText: 'Full name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }
}
