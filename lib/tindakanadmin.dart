import 'package:flutter/material.dart';

class TindakanAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tindakan Admin'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Selamat datang di Halaman Tindakan Admin',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Anda memiliki akses untuk melakukan berbagai tindakan administratif di aplikasi ini.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/images/admin.png', // Ganti dengan path gambar yang sesuai
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Tambahkan fungsionalitas tombol jika diperlukan
                },
                child: Text('Lakukan Tindakan Admin'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
