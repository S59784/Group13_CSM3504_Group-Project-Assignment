import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_grp_project/main.dart';
import 'package:firebase_core/firebase_core.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

final _shipNoController = TextEditingController();
final _shipNameController = TextEditingController();
final _shipDateController = TextEditingController();
final _shipLocationController = TextEditingController();
final _shipStatusController = TextEditingController();

@override
void dispose() {
  _shipNoController.dispose();
  _shipNameController.dispose();
  _shipDateController.dispose();
  _shipLocationController.dispose();
  _shipStatusController.dispose();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Fleet Circumstantial"),
        ),
      ),

      //getting input
      body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: TextFormField(
                  controller: _shipNoController,
                  decoration: const InputDecoration(
                      labelText: "No",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: TextFormField(
                  controller: _shipNameController,
                  decoration: const InputDecoration(
                      labelText: "Name",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: TextFormField(
                  controller: _shipDateController,
                  decoration: const InputDecoration(
                      labelText: "Date",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: TextFormField(
                  controller: _shipLocationController,
                  decoration: const InputDecoration(
                      labelText: "Location",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5.0),
                child: TextFormField(
                  controller: _shipStatusController,
                  decoration: const InputDecoration(
                      labelText: "Status",
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0))),
                ),
              ),

              //action button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('CREATE'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.green),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('READ'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('UPDATE'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('DELETE'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
