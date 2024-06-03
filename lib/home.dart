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
              // Menambahkan 2 foto di bawah header dengan teks
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Gambar dan teks pertama
                    infoCard(
                      'assets/images/tanah.jpeg',
                      'Legalisasi Dokumen',
                    ),
                    SizedBox(width: 10),
                    // Gambar dan teks kedua
                    infoCard(
                      'assets/images/tanah2.webp',
                      'Tahapan Proses Jual Beli Tanah',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Menambahkan baris kedua dengan 2 foto lagi
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Gambar ketiga
                    infoCard(
                      'assets/images/tanah.jpeg',
                      'Legalisasi Dokumen',
                    ),
                    SizedBox(width: 10),
                    // Gambar keempat
                    infoCard(
                      'assets/images/tanah2.webp',
                      'Tahapan Proses Jual Beli Tanah',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Menambahkan tombol Testimonial
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TestimonialPage()), // Navigasi ke halaman testimoni
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Testimonial'),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget infoCard(String imagePath, String title) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            imagePath,
            height: 150, // Perpanjang tinggi gambar
            width: 150, // Sesuaikan lebar gambar
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),
        Container(
          width: 150, // Sesuaikan lebar teks
          child: Text(
            title,
            style: TextStyle(fontSize: 12), // Ukuran teks lebih besar
            textAlign: TextAlign.center,
          ),
        ),
      ],
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              testimonialContainer(
                image: 'assets/images/kita.jpeg',
                testimonial: 'Pelayananannya ramah dan cepat, "recommended".',
                author: '- Budi Hartono, PT. Abadi Jaya',
              ),
              SizedBox(height: 20),
              testimonialContainer(
                image: 'assets/images/kita.jpeg',
                testimonial:
                    'Kami sudah melakukan kerjasama lebih dari 4 tahun, selama kerjasama tidak pernah mengecewakan dalam pengurusan sertifikat jual beli properti, terimakasih pa ari.',
                author: '- Raharjo',
              ),
              SizedBox(height: 20),
              testimonialContainer(
                image: 'assets/images/kita.jpeg',
                testimonial: 'Mantap bagus pelayanan, good rating 9/10',
                author: '- John Doe',
              ),
            ],
          ),
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
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color.fromARGB(255, 159, 156, 156)),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
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
                Text(
                  author,
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
