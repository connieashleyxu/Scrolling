import 'package:flutter/material.dart';
import 'contact_list.dart';
import 'contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Contact List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return ContactList(contacts: [
        Contact(
          name: 'Tom Brady',
          url: 'https://upload.wikimedia.org/wikipedia/commons/b/b0/Tom_Brady_WFT-Buccaneers_NOV2021_%28cropped%29.jpg',
        ),
        Contact(
          name: 'Tom Cruise',
          url: 'https://upload.wikimedia.org/wikipedia/commons/3/33/Tom_Cruise_by_Gage_Skidmore_2.jpg',
        ),
        Contact(
          name: 'Tom Holland',
          url: 'https://upload.wikimedia.org/wikipedia/commons/3/3c/Tom_Holland_by_Gage_Skidmore.jpg',
        ),
        Contact(
          name: 'Tom Hardy',
          url: 'https://upload.wikimedia.org/wikipedia/commons/4/43/Tom_Hardy_by_Gage_Skidmore.jpg',
        ),
        Contact(
          name: 'John Krasinski',
          url: 'https://upload.wikimedia.org/wikipedia/commons/1/13/John_Krasinski_2018.png',
        ),
      ],
    );
  }
 }
