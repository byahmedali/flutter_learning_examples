import 'package:flutter/material.dart';

class CardListTileListViewDemoScreen extends StatelessWidget {
  const CardListTileListViewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = <Map<String, String>>[
      {'name': 'Maryam Munir', 'role': 'Mobile App Developer'},
      {'name': 'Ali Hassan', 'role': 'Data Scientist'},
      {'name': 'Muhammad Akhlaq', 'role': 'AI Engineer'},
      {'name': 'Fasih Ullah Khan', 'role': 'Cloud Architect'},
      {'name': 'Sami Ullah', 'role': 'Web Developer'},
      {'name': 'Aneela Khurshid', 'role': 'UI/UX Designer'},
      {'name': 'Aqeel Khaliq', 'role': 'Backend Engineer'},
      {'name': 'Ayesha Gul', 'role': 'Flutter Developer'},
    ];

    return Scaffold(
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'This example shows how to use Card, ListTile, and ListView together to build a simple list UI.',
              style: TextStyle(fontSize: 15),
            ),
          ),
          for (final contact in contacts)
            Card.filled(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                leading: const CircleAvatar(child: Icon(Icons.person)),
                title: Text(contact['name'] ?? ''),
                subtitle: Text(contact['role'] ?? ''),
                trailing: const Icon(Icons.call),
              ),
            ),
        ],
      ),
    );
  }
}
