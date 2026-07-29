import 'package:flutter/material.dart';

import '../features/auth/login_screen.dart';
import '../features/demos/api/api_demo_screen.dart';
import '../features/demos/camera/camera_demo_screen.dart';
import '../features/demos/cards/card_list_tile_list_view_demo_screen.dart';
import '../features/demos/location/location_demo_screen.dart';
import '../features/demos/navigation/navigation_demo_screen.dart';
import '../features/demos/passing_data/passing_data_demo_screen.dart';
import '../features/demos/shared_preferences/shared_preferences_demo_screen.dart';

class LearningDashboardScreen extends StatelessWidget {
  const LearningDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final demos = <DemoItem>[
      DemoItem(
        title: 'Flutter Navigation',
        description: 'Learn how to move between screens with simple buttons.',
        icon: Icons.navigation,
        demoType: DemoType.navigation,
      ),
      DemoItem(
        title: 'Firebase Authentication',
        description: 'Try a beginner-friendly login and sign-up example.',
        icon: Icons.lock_outline,
        demoType: DemoType.firebaseAuth,
      ),
      DemoItem(
        title: 'Passing Data Among Screens',
        description: 'Send information from one screen to another.',
        icon: Icons.send,
        demoType: DemoType.passingData,
      ),
      DemoItem(
        title: 'Persistent Storage',
        description: 'Save a value with Shared Preferences and load it later.',
        icon: Icons.storage,
        demoType: DemoType.sharedPreferences,
      ),
      DemoItem(
        title: 'Cards, ListTile and ListView',
        description:
            'Learn how to build simple card-based lists for beginners.',
        icon: Icons.view_list,
        demoType: DemoType.cards,
      ),
      DemoItem(
        title: 'Fetch Data from API',
        description:
            'Load JSON data from the internet and display it in a list.',
        icon: Icons.public,
        demoType: DemoType.api,
      ),
      DemoItem(
        title: 'Access Device Camera',
        description: 'Use the camera plugin to take and preview a picture.',
        icon: Icons.camera_alt,
        demoType: DemoType.camera,
      ),
      DemoItem(
        title: 'Access Device Location',
        description: 'Request the current location and show the coordinates.',
        icon: Icons.location_on,
        demoType: DemoType.location,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Learning Examples'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.separated(
          itemCount: demos.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final demo = demos[index];
            return Card(
              elevation: 2,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.primaryContainer,
                  child: Icon(
                    demo.icon,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                title: Text(demo.title),
                subtitle: Text(demo.description),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DemoDetailScreen(demo: demo),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class DemoDetailScreen extends StatelessWidget {
  const DemoDetailScreen({super.key, required this.demo});

  final DemoItem demo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(demo.title)),
      body: _buildDemoContent(),
    );
  }

  Widget _buildDemoContent() {
    switch (demo.demoType) {
      case DemoType.navigation:
        return const NavigationDemoScreen();
      case DemoType.firebaseAuth:
        return const LoginScreen();
      case DemoType.passingData:
        return const PassingDataDemoScreen();
      case DemoType.sharedPreferences:
        return const SharedPreferencesDemoScreen();
      case DemoType.cards:
        return const CardListTileListViewDemoScreen();
      case DemoType.api:
        return const ApiDemoScreen();
      case DemoType.camera:
        return const CameraDemoScreen();
      case DemoType.location:
        return const LocationDemoScreen();
    }
  }
}

class DemoItem {
  const DemoItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.demoType,
  });

  final String title;
  final String description;
  final IconData icon;
  final DemoType demoType;
}

enum DemoType {
  navigation,
  firebaseAuth,
  passingData,
  sharedPreferences,
  cards,
  api,
  camera,
  location,
}
