import 'package:day20/data_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return Dialog(
                        backgroundColor: Colors.transparent,
                        child: Stack(
                          children: [
                            Container(
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.teal),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 60, left: 20, right: 20),
                                child: Form(
                                  key: _formkey,
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        controller: email,
                                        decoration: InputDecoration(
                                            hintText: "Enter Your Email",
                                            labelText: "Email",
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black,
                                                    width: 1)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black,
                                                    width: 1))),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      TextFormField(
                                        controller: password,
                                        decoration: InputDecoration(
                                            hintText: "Enter Your Password",
                                            labelText: "Password",
                                            labelStyle:
                                                TextStyle(color: Colors.black),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black,
                                                    width: 1)),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.black,
                                                    width: 1))),
                                        obscureText: true,
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                "Cancel",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              )),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return AlertDialog(
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      content: Container(
                                                        height: 200,
                                                        width: 200,
                                                        decoration: BoxDecoration(
                                                            color: Colors.teal,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20)),
                                                        child: Center(
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text("Email: " +
                                                                  email.text),
                                                              Text("Password: " +
                                                                  password
                                                                      .text),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              ElevatedButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child: Text(
                                                                    "Close",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .black),
                                                                  ))
                                                            ],
                                                          ),
                                                        ),
                                                      ));
                                                }));
                                              },
                                              child: Text(
                                                "Submit",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                top: -35,
                                left: 85,
                                child: CircleAvatar(
                                    backgroundColor: Colors.lightBlueAccent,
                                    radius: 40,
                                    backgroundImage: NetworkImage(
                                        "https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png")))
                          ],
                          clipBehavior: Clip.none,
                        ));
                  });
            },
            child: Text("Click Me")),
      ),
    );
  }
}
