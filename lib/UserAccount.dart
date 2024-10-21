// import 'package:flutter/material.dart';
// import 'package:servicenest/Components/SiginButton.dart';
// import 'package:servicenest/Components/TextInput.dart';

// class Useraccount extends StatefulWidget {
//   const Useraccount({super.key});

//   @override
//   State<Useraccount> createState() => _UseraccountState();
// }

// class _UseraccountState extends State<Useraccount> {
//   final EmailController = TextEditingController();
//   final PasswordController = TextEditingController();

//   // Sign User In
//   void SignUserIn() {}
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[300],
//       appBar: AppBar(
//         toolbarHeight: 35,
//         backgroundColor: Colors.transparent,
//         title: const Center(child: Text("User Account")),
//         leading: const BackButton(),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.transparent,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Not a memeber?",
//               style: TextStyle(color: Colors.grey[700]),
//             ),
//             const SizedBox(
//               width: 4,
//             ),
//             const Text(
//               "Create an Account",
//               style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
//             )
//           ],
//         ),
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 220,
//                 width: 350,
//                 child: Image.asset(
//                   "Assets/applogo.png",
//                 ),
//               ),
//               Text(
//                 "welcome back, you've been missed!",
//                 style: TextStyle(color: Colors.grey[700], fontSize: 16),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               Textinput(
//                 controller: EmailController,
//                 hinttext: "Email",
//                 obscuretext: false,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Textinput(
//                 controller: PasswordController,
//                 hinttext: "Password",
//                 obscuretext: true,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Text(
//                       "Forgot Password?",
//                       style: TextStyle(color: Colors.grey[600]),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 25,
//               ),
//               Siginbutton(
//                 onTap: SignUserIn,
//               ),
//               const SizedBox(
//                 height: 50,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

// Siginbutton Component with rounded corners and adjusted width
class Siginbutton extends StatelessWidget {
  final VoidCallback onTap;

  const Siginbutton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85, // Button width adjustment
        padding: const EdgeInsets.symmetric(vertical: 18), // Adjusted padding for height
        decoration: BoxDecoration(
          color: Colors.black, // Button color set to black
          borderRadius: BorderRadius.circular(20), // Rounded corners
        ),
        child: const Center(
          child: Text(
            "Login", // Button text
            style: TextStyle(
              color: Colors.white, // Text color set to white for contrast
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// Textinput Component for Email Input with suggestions
class Textinput extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final bool obscureText;
  final List<String>? autofillHints;

  const Textinput({
    Key? key,
    required this.controller,
    required this.label,
    required this.obscureText,
    this.autofillHints,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        autofillHints: autofillHints,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto, // Moves label when focused
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}

// PasswordInput Component with Toggle Visibility Feature
class PasswordInput extends StatefulWidget {
  final TextEditingController controller;

  const PasswordInput({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        controller: widget.controller,
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: "Password",
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility, // Corrected toggle behavior
            ),
            onPressed: _togglePasswordVisibility,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}

// Useraccount Screen
class Useraccount extends StatefulWidget {
  const Useraccount({super.key});

  @override
  State<Useraccount> createState() => _UseraccountState();
}

class _UseraccountState extends State<Useraccount> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  bool _rememberMe = false;

  // Sign User In
  void SignUserIn() {
    // Add sign-in functionality here
  }

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
              "Not a member?",
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(
              width: 4,
            ),
            const Text(
              "Create an Account",
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 220,
                width: 350,
                child: Image.asset(
                  "Assets/applogo.png",
                ),
              ),
              Text(
                "Welcome back, you've been missed!",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(height: 25),
              Textinput(
                controller: EmailController,
                label: "Email",
                obscureText: false,
                autofillHints: const [AutofillHints.email], // Autofill email suggestions
              ),
              const SizedBox(height: 10),
              PasswordInput(
                controller: PasswordController, // Password field with eye icon toggle
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor: Colors.black, // Set checkbox border color to black
                          ),
                          child: Checkbox(
                            activeColor: Colors.black, // Set checkbox fill color to black
                            value: _rememberMe,
                            onChanged: (bool? value) {
                              setState(() {
                                _rememberMe = value!;
                              });
                            },
                          ),
                        ),
                        const Text("Remember me"),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle forgot password action
                      },
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.blue, // Matching color for forgot password
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Siginbutton(
                onTap: SignUserIn,
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

