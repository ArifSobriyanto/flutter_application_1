import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // Menambahkan gambar di paling atas
              Image.asset(
                'assets/images/kantor.png',
                height: 200, // Sesuaikan tinggi gambar
                width: double.infinity, // Sesuaikan lebar gambar
                fit: BoxFit.cover, // Sesuaikan gambar dengan container
              ),
              SizedBox(height: 20),
              Text(
                'INFORMASI',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              // Menambahkan 3 foto di bawah header dengan teks
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Gambar dan teks pertama
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/tanah.jpeg',
                        height: 100,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Legalisasi Dokumen',
                        style: TextStyle(fontSize: 7), // Ukuran teks kecil
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  // Gambar dan teks kedua
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/tanah2.webp',
                        height: 100,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Tahapan Proses Jual Beli Tanah',
                        style: TextStyle(fontSize: 7), // Ukuran teks kecil
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  // Gambar dan teks ketiga
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/mak.jpg',
                        height: 100,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Mengapa Harus Dengan Akta Notaris?',
                        style: TextStyle(fontSize: 7), // Ukuran teks kecil
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Menambahkan baris kedua dengan 3 foto lagi
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Gambar keempat
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/tanah.jpeg',
                        height: 100,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Legalisasi Dokumen',
                        style: TextStyle(fontSize: 7), // Ukuran teks kecil
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  // Gambar kelima
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/tanah2.webp',
                        height: 100,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Tahapan Proses Jual Beli Tanah',
                        style: TextStyle(fontSize: 7), // Ukuran teks kecil
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  // Gambar keenam
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/mak.jpg',
                        height: 100,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Mengapa Harus Dengan Akta Notaris?',
                        style: TextStyle(fontSize: 7), // Ukuran teks kecil
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
