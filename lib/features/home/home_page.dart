import 'package:aerodrop/features/home/widget/bottom_flow_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

enum SheetStep { sendPackage, chooseService, summary, loading }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DraggableScrollableController sheetController =
      DraggableScrollableController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              initialCenter: LatLng(51.509364, -0.128928),
              // Center the map over London, UK
              initialZoom: 9.2,
            ),
            children: [
              TileLayer(
                // Bring your own tiles
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                // For demonstration only
                userAgentPackageName:
                    'com.example.aerodrop' /*'com.example.app'*/, // Add your app identifier
                // And many more recommended properties!
              ),
              RichAttributionWidget(
                // Include a stylish prebuilt attribution widget that meets all requirments
                attributions: [
                  TextSourceAttribution(
                    'OpenStreetMap contributors',
                    onTap: () {}, // (external)
                  ),
                  // Also add images...
                ],
              ),
            ],
          ),
          BottomFlowSheet(),
        ],
      ),
    );
  }
}
