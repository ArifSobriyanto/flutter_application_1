import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

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
              // Menambahkan tombol Testimonial
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TestimonialPage()), // Navigasi ke halaman testimoni
                  );
                },
                child: Text('Testimonial'),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class TestimonialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testimoni Pelanggan'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            testimonialContainer(
              image: 'assets/images/kita.jpeg',
              testimonial: 'Pelayananannya ramah dan cepat, "recommended".',
              author: '- Budi Hartono, PT. Abadi Jaya',
            ),
            SizedBox(height: 40),
            testimonialContainer(
              image: 'assets/images/kita.jpeg',
              testimonial:
                  'Kami sudah melakukan kerjasama lebih dari 4 tahun, selama kerjasama tidak pernah mengecewakan dalam pengurusan sertifikat jual beli properti, terimakasih pa ari.',
              author: '- Raharjo',
            ),
            SizedBox(height: 40),
            testimonialContainer(
              image: 'assets/images/kita.jpeg',
              testimonial: 'mantap bagus pelayanan good rating 9/10',
              author: '- John Doe',
            ),
          ],
        ),
      ),
    );
  }

  Widget testimonialContainer({
    required String image,
    required String testimonial,
    required String author,
  }) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 30,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    testimonial,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    author,
                    style: TextStyle(fontStyle: FontStyle.italic),
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
