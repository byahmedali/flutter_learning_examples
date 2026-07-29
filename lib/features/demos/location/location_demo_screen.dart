import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationDemoScreen extends StatefulWidget {
  const LocationDemoScreen({super.key});

  @override
  State<LocationDemoScreen> createState() => _LocationDemoScreenState();
}

class _LocationDemoScreenState extends State<LocationDemoScreen> {
  String _locationText = 'Press the button to get location';
  bool _loading = false;

  Future<void> _getCurrentLocation() async {
    setState(() {
      _loading = true;
      _locationText = 'Fetching location...';
    });

    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        setState(() => _locationText = 'Location services are disabled.');
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          setState(() => _locationText = 'Location permission denied.');
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        setState(
          () => _locationText =
              'Location permissions are permanently denied. Enable them in settings.',
        );
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );

      setState(() {
        _locationText =
            'Latitude: ${position.latitude}\nLongitude: ${position.longitude}';
      });
    } catch (e) {
      setState(() => _locationText = 'Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _locationText,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 24),
              _loading
                  ? const CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: _getCurrentLocation,
                      child: const Text('Get Current Location'),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
