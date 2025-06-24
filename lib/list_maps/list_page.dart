import 'package:flutter/material.dart';
import 'maps_screen.dart';

class LocationItem {
  final String name;
  final String gambarAsset;
  final double latitude;
  final double longitude;
  final double rating;
  final String descripsi;

  LocationItem( {
    required this.name,
    required this.gambarAsset,
    required this.latitude,
    required this.longitude,
    required this.rating,
    required this.descripsi,
  });
}

class ListPage extends StatelessWidget {
  final List<LocationItem> locations = [
    LocationItem(
      name: 'Rumah Sakit Jiwa Prof Dr HB Saanin',
      gambarAsset: 'assets/images/rs6.jpg',
      latitude: -0.9433033769866422, 
      longitude: 100.45971385141482,
      rating: 4.8,
      descripsi: "Pada 2 November 2000, rumah sakit yang dahulu pernah dipimpin Hasan Basri Saanin di Padang diresmikan dengan nama baru yaitu Rumah Sakit Jiwa Prof. dr. Hasan Basri Saanin Datuk Tan Pariaman.."
    ),
    LocationItem(
      name: 'RSIA CICIK',
      gambarAsset: 'assets/images/rs7.jpg',
      latitude: -0.9488738928080098, 
      longitude: 100.38585160646757,
      rating: 4.1,
        descripsi: "Rumah Sakit Ibu dan Anak Cicik (RSIA CICIK) merupakan Rumah Sakit Swasta yang mengedepankan pelayanan spesialistik kebidanan dan penyakit kandungan dan kesehatan anak.Walaupun demikian, RSIA Cicik di tunjang juga oleh unit-unit spesialistik yang lain demi mewujudkan terciptanya pelayanan satu pintu yang bertujuan untuk kenyamanan pasien.."
    ),
    LocationItem(
      name: 'RSU Selaguri',
      gambarAsset: 'assets/images/rs8.jpg',
      latitude: -0.9412025725192184, 
      longitude: 100.35762217895248,
      rating: 3.9,
        descripsi: "Rumah sakit Selaguri adalah rumah sakit umum (RSU) milik Swasta dan merupakan salah satu rumah sakit tipe D yang terletak di wilayah Kota Padang, Sumatera Barat. Rumah sakit ini memberikan pelayanan di bidang kesehatan yang didukung oleh layanan dokter spesialis serta ditunjang dengan fasilitas medis lainnya."
    ),
    LocationItem(
      name: 'Rumah Sakit Yos Sudarso ',
      gambarAsset: 'assets/images/rs5.jpg',
      latitude: -0.9329698215885728, 
      longitude: 100.36259088278254,
      rating: 4.0,
        descripsi: "Rumah Sakit Yos Sudarso berlokasi di daerah Padang, Sumatera Barat. Memiliki Visi menjadi Rumah sakit berkarakter dengan pelayanan prima berdasarkan cinta kasih. Dengan Misi mengembangkan SDM yang berkomitmen, profesional, Cinta Kasih, spiritualitas pelayanan, serta mengamalkan tata nilai dan etos kerja, meningkatkan pelayanan yang berfokus pada pasien, dengan mengutamakan keselamatan dan kepuasan pelanggan, meningkatkan kendali mutu dan kendali biaya (KMKB) dalam pelayanan."
    ),
    LocationItem(
      name: 'RS Naili DBS',
      gambarAsset: 'assets/images/rs9.jpg',
      latitude: -0.9435662803094811, 
      longitude: 100.35887803503671,
      rating: 4.6,
        descripsi: "Rumah Sakit Naili DBS Padang merupakan Rumah Sakit Umum milik Swasta bertipe C yang berada di Padang, Sumatera Barat. Rumah Sakit Naili DBS Padang memberikan pelayanan poliklinik penyakit dalam, kebidanan dan kandungan, anak, bedah, jantung, mata, THT, paru, saraf, penyakit kulit dan kelamin, dan kejiwaan. Rumah Sakit ini juga memiliki fasilitas seperti laboratorium, IGD, ruang operasi, farmasi, dan lain sebagainya."
    ),
    LocationItem(
        name: 'Rumah Sakit Tentara',
        gambarAsset: 'assets/images/rs3.jpg',
        latitude: -0.9507302187117999, 
        longitude: 100.37199079588248,
        rating: 4.4,
        descripsi: "Rumah Sakit Tentara dr. Reksodiwiryo (RST Reksodiwiryo) adalah sebuah rumah sakit pemerintah yang dikelola oleh TNI-AD terletak pada kawasan Ganting, kota Padang, provinsi Sumatera Barat, Indonesia. Rumah sakit ini berdiri pada kawasan cagar budaya yang sebelumnya merupakan bangunan peninggalan zaman Belanda. Pada rumah sakit ini Walikota Padang Bagindo Azizchan diotopsi untuk memastikan penyebab terbunuhnya beliau. Rumah Sakit dr. Reksodiwiryo merupakan rumah sakit yang telah mendapat akreditasi dari Kementrian Kesehatan dengan kategori 5 Pelayanan. Rumah Sakit dr. Reksodiwiryo juga bertindak sebagai Rumah Sakit Trauma Centre bagi peserta Jamsostek. Rumah Sakit dr. Reksodiwiryo juga mengadakan kerjasama dengan Jasa Raharja untuk menangani korban kecelakaan lalu lintas."
    ),
    LocationItem(
        name: 'Semen Padang Hospital',
        gambarAsset: 'assets/images/rs10.jpg',
        latitude: -0.9371022007085434, 
        longitude:  100.39981308950641,
        rating: 3.9,
        descripsi: "SPH merupakan rumah sakit internasional pertama di Sumatera Barat yang dibangun untuk mengurangi animo warga Indonesia berobat ke luar negeri, seperti ke Malaysia dan Singapura."
    ),
    LocationItem(
        name: 'Rumah Sakit Islam Siti Rahmah',
        gambarAsset: 'assets/images/rs11.jpg',
        latitude: -0.8687234843494576,
        longitude: 100.38372193347351,
        rating: 3.6,
        descripsi: "Rumah Sakit Siti Rahmah adalah rumah sakit swasta yang memiliki berbagai layanan seperti poliklinik, rawat inap, laboratorium, dan radiologi. Terkenal dengan pelayanan yang ramah dan fasilitas yang nyaman, rumah sakit ini menjadi pilihan banyak masyarakat Padang."
    ),
    LocationItem(
        name: 'Rumah Sakit Umum Aisyiyah.',
        gambarAsset: 'assets/images/rs12.jpg',
        latitude: -0.9430435651913752, 
        longitude:  100.36257855559357,
        rating: 4.2,
        descripsi: "Rumah Sakit‘Aisyiyah (RSU-A) pada awal berdirinya tahun 1966 adalah Klinik Bersalin dimana pendiriannya termotivasi karena adanya ibu-ibu hamil islam sering mengeluh karena tidak adanya Rumah Bersalin Islami, sehingga mereka terpaksa melahirka dan dirawat pada bidan dan rumah sakit non muslim."
    ),
    LocationItem(
        name: 'RSUP Dr. M. Djamil Padang',
        gambarAsset: 'assets/images/rs1.png',
        latitude: -0.9414494841289546, 
        longitude:  100.3661749621958,
        rating: 4.2,
        descripsi: "Rumah Sakit Umum Pusat (RSUP) Dr. M. Djamil Padang pertama kali bernama “RSU Megawati” yang menempati 2 (dua) komplek, sebagian di Jl. Belakang Gereja dan sebagian lagi di Jl. Jati Lama, Padang dengan berkapasitas 100 tempat tidur."
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rumah Sakit di Padang')),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          final loc = locations[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  loc.gambarAsset,
                  width: 60,
                  height: 60,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(loc.name),
              subtitle: Row(
                children: [
                  ...List.generate(5, (i) {
                    return Icon(
                      i < loc.rating.floor()
                          ? Icons.star
                          : Icons.star_border,
                      color: Colors.orange,
                      size: 16,
                    );
                  }),
                  SizedBox(width: 6),
                  Text(
                    loc.rating.toString(),
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MapScreen(location: loc),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}