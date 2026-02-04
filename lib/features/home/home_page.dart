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
              initialZoom: 9.2,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.aerodrop',
              ),
              RichAttributionWidget(
                attributions: [
                  TextSourceAttribution(
                    'OpenStreetMap contributors',
                    onTap: () {},
                  ),
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
