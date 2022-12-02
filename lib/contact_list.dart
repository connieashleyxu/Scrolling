import 'package:flutter/material.dart';
import 'contact.dart';

class ContactList extends StatefulWidget {
  // Constructor
  const ContactList({Key? key, required List<Contact> contacts}): super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  //Instance Variables
  var contacts = <Contact>[];

  @override
  void initState() {
    super.initState();
    contacts = [
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
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact List'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Contact 1
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image(
                          image: NetworkImage(contacts[0].url),
                          width: 150,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Text(contacts[0].name, style: const TextStyle(color: Colors.white,),),
                    ],
                  ),
                ),
              ),
            ),

            // Contact 2
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image(
                          image: NetworkImage(contacts[1].url),
                          width: 150,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Text(contacts[1].name, style: const TextStyle(color: Colors.white,),),
                    ],
                  ),
                ),
              ),
            ),

            // Contact 3
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image(
                          image: NetworkImage(contacts[2].url),
                          width: 150,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Text(contacts[2].name, style: const TextStyle(color: Colors.white,),),
                    ],
                  ),
                ),
              ),
            ),

            // Contact 4
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image(
                          image: NetworkImage(contacts[3].url),
                          width: 150,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Text(contacts[3].name, style: const TextStyle(color: Colors.white,),),
                    ],
                  ),
                ),
              ),
            ),

            // Contact 5
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Image(
                          image: NetworkImage(contacts[4].url),
                          width: 150,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Text(contacts[4].name, style: const TextStyle(color: Colors.white,),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}