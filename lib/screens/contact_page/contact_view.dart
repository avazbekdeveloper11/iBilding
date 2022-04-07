import 'package:flutter/material.dart';

class ContractstView extends StatelessWidget {
  const ContractstView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contracts")),
      body: const Center(
        child: Text("Contact Page"),
      ),
    );
  }
}
