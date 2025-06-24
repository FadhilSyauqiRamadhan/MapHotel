import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:map_2a/pages/custom_box_map.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map_2a/pages/detail_hotel_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();
  //tipe map
  MapType _mapType = MapType.normal;

  //style map
  String? _styleMap;

  //method klik
  void _onMapTypeButtonPressed() {
    setState(() {
      _mapType =
          _mapType == MapType.normal ? MapType.satellite : MapType.normal;
    });
  }

  //method _loadFileStyleMap
  Future<void> _loadFileStyleMap(String path) async {
    String style = await rootBundle.loadString(path);
    setState(() {
      _styleMap = style;
    });
  }

  //standard
  void _standardStyle() => setState(() => _styleMap = null);
  //dark
  void _darkStyle() => _loadFileStyleMap('assets/style_dark.json');
  //retro
  void _retroStyle() => _loadFileStyleMap('assets/style_retro.json');

  final List<Map<String, dynamic>> _ListHotel = [
    {
      'namaTempat': 'Hotel Amaris Padang',
      'gambar': 'assets/images/hotel2.jpg',
      'harga': 'Rp.492.000',
      'lat': -0.9424254537289627,
      'lng': 100.36176001424866,
      'rating': 4.4,
      'keterangan':
          'Reprehenderit ea ut elit dolor eiusmod ullamco mollit reprehenderit exercitation. Eiusmod pariatur dolor Lorem nostrud nostrud ipsum sit exercitation eiusmod. Minim dolore aliquip ea est exercitation. Sit ad cupidatat et sint aliqua nisi fugiat enim. Eu magna nostrud occaecat ad nulla aliqua ut ad.',
    },
    {
      'namaTempat': 'Santika Premiere Hotel Padang',
      'gambar': 'assets/images/hotel1.jpg',
      'harga': 'Rp.818.224',
      'lat': -0.9413471238507617,
      'lng': 100.35848144846851,
      'rating': 4.7,
      'keterangan':
          'Ea aute est est quis. Est occaecat commodo veniam consectetur tempor nostrud ad deserunt sunt Lorem fugiat commodo. Minim dolor ad do pariatur duis est enim sint irure duis voluptate sint fugiat fugiat. Mollit duis laboris ipsum proident. Ad anim adipisicing tempor elit veniam excepteur dolor consectetur elit occaecat. Veniam consequat id do et do consequat exercitation ullamco cupidatat id voluptate. Ad id ipsum ullamco magna minim irure sunt quis esse consequat anim minim et commodo.',
    },
  ];

  Set<Marker> _createMarker() {
    Set<Marker> markers = {};

    for (var hotel in _ListHotel) {
      final LatLng koordinat = LatLng(hotel['lat'], hotel['lng']);
      markers.add(
        Marker(
          markerId: MarkerId(hotel['namaTempat']),
          position: koordinat,
          onTap: () {
            _customInfoWindowController.addInfoWindow!(
              CustomBoxMap(
                gambar: hotel['gambar'],
                namaTempat: hotel['namaTempat'],
                rating: hotel['rating'],
                harga: hotel['harga'],
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (_) => DetailHotelPage(
                            nama: hotel['namaTempat'],
                            gambar: hotel['gambar'],
                            harga: hotel['harga'],
                            rating: hotel['rating'],
                            keterangan: hotel['keterangan'],
                          ),
                    ),
                  );
                },
              ),
              koordinat,
            );
          },
        ),
      );
    }

    return markers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(-0.9294517008441783, 100.37253093611072),
              zoom: 12.8,
            ),
            mapType: _mapType,
            //style map
            style: _styleMap,
            //Markers
            markers: _createMarker(),
            //controller
            onMapCreated: (controller) {
              _customInfoWindowController.googleMapController = controller;
            },
            onTap: (position) => _customInfoWindowController.hideInfoWindow!(),
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            height: 200,
            width: 200,
            offset: 50,
          ),
          Positioned(
            bottom: 16,
            left: 16,
            child: Column(
              children: [
                FloatingActionButton(
                  onPressed: _onMapTypeButtonPressed,
                  backgroundColor: Colors.green,
                  child:
                      _mapType == MapType.normal
                          ? Icon(Icons.map, color: Colors.white)
                          : Icon(Icons.satellite_alt, color: Colors.white),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: _standardStyle,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.sunny, color: Colors.white),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: _darkStyle,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.dark_mode, color: Colors.black),
                ),
                SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: _retroStyle,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.location_city, color: Colors.yellow),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
