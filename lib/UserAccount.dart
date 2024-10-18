import 'package:flutter/material.dart';

class Useraccount extends StatefulWidget {
  const Useraccount({super.key});

  @override
  State<Useraccount> createState() => _UseraccountState();
}

class _UseraccountState extends State<Useraccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("User Account")),
        leading: BackButton(),
      ),
    );
  }
}
