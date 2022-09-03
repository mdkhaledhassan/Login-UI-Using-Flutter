import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  DataPage({Key? key, this.email, this.password}) : super(key: key);
  String? email;
  String? password;
  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Email: " + widget.email.toString()),
            Text("Password: " + widget.password.toString()),
          ],
        ),
      ),
    );
  }
}
