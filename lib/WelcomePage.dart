import 'package:flutter/material.dart';
import 'package:servicenest/AccountType.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ManageState();
  }
}

class _ManageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Use plain color if you remove image
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Welcome",
            style: TextStyle(fontWeight: FontWeight.w500)),
        leading: const Icon(Icons.home),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Image.asset(
              "Assets/avatar.png",
              width: MediaQuery.of(context).size.width * 0.6,
              alignment: Alignment.center,
            ),
          ),
          const Column(
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Find nearby service provider",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            width: 250,
            child: MaterialButton(
              color: const Color.fromARGB(255, 35, 247, 130),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const Accounttype();
                }));
              },
              height: 35,
              child: const Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

