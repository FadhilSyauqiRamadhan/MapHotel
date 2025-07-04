import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetailMapsRumahSakit extends StatelessWidget {
  final String name;
  final String imageAsset;
  final double latitude;
  final double longitude;
  final double rating;
  final String description;

  const DetailMapsRumahSakit({
    Key? key,
    required this.name,
    required this.imageAsset,
    required this.latitude,
    required this.longitude,
    required this.description,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LatLng target = LatLng(latitude, longitude);

    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar
            ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
              child: Image.asset(
                imageAsset,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Rumah Sakit
                  Text(
                    name,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  // Rating
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 24),
                      SizedBox(width: 4),
                      Text(
                        rating.toStringAsFixed(1),
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  // Lokasi
                  // Row(
                  //   children: [
                  //     Icon(Icons.location_on, color: Colors.red),
                  //     SizedBox(width: 8),
                  //     Text('Lat: $latitude, Lng: $longitude'),
                  //   ],
                  // ),
                  SizedBox(height: 16),
                  // Deskripsi
                  Text(
                    description,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  // Google Map View
                  SizedBox(
                    height: 300,
                    child: GoogleMap(
                      initialCameraPosition: CameraPosition(
                        target: target,
                        zoom: 16,
                      ),
                      markers: {
                        Marker(
                          markerId: MarkerId(name),
                          position: target,
                          infoWindow: InfoWindow(title: name),
                        ),
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
