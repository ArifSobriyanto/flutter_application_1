import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Notaris'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/mamak.jpg'),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                'Sri Nilawati Mustika, SH',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Spesialisasi: Hukum Perdata, Hukum Bisnis',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Kontak',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Telepon: +62 123 456 789',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 5),
            Text(
              'Email: notaris@example.com',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Alamat Kantor',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'JL. Raden Mat Thaher, No. 05, Rengas Condong, Batanghari, Muara Bulian, Jambi, Jambi, Indonesia',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Tambahkan fungsi untuk tombol jadwal pertemuan di sini
              },
              child: Text('Jadwalkan Pertemuan'),
            ),
          ],
        ),
      ),
    );
  }
}
