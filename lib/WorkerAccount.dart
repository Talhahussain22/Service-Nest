import 'package:flutter/material.dart';

class Workeraccount extends StatefulWidget {
  const Workeraccount({super.key});

  @override
  State<Workeraccount> createState() => _WorkeraccountState();
}

class _WorkeraccountState extends State<Workeraccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Worker Account")),
        leading: BackButton(),
      ),
    );
  }
}
