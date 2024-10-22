import 'package:flutter/material.dart';
import 'package:servicenest/Components/SiginButton.dart';
import 'package:servicenest/Components/TextInput.dart';

class Useraccount extends StatefulWidget {
  const Useraccount({super.key});

  @override
  State<Useraccount> createState() => _UseraccountState();
}

class _UseraccountState extends State<Useraccount> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

  // Sign User In
  void SignUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        toolbarHeight: 35,
        backgroundColor: Colors.transparent,
        title: const Center(child: Text("User Account")),
        leading: const BackButton(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Not a memeber?",
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              "Create an Account",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 220,
                width: 350,
                child: Image.asset(
                  "Assets/applogo.png",
                ),
              ),
              Text(
                "welcome back, you've been missed!",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              Textinput(
                controller: EmailController,
                hinttext: "Email",
                obscuretext: false,
              ),
              const SizedBox(
                height: 10,
              ),
              Textinput(
                controller: PasswordController,
                hinttext: "Password",
                obscuretext: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Siginbutton(
                onTap: SignUserIn,
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}