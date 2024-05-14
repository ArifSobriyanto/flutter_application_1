import 'package:flutter/material.dart';

class PPATPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman PPAT'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Menambahkan gambar di paling atas dengan padding
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/images/ppat.jpeg',
                height: 200, // Sesuaikan tinggi gambar
                width: double.infinity, // Sesuaikan lebar gambar
                fit: BoxFit.cover, // Sesuaikan gambar dengan container
              ),
            ),
            SizedBox(height: 20), // Berikan jarak antara gambar dan konten lainnya

            // Widget untuk informasi PPAT
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Persyaratan Kelengkapan Data Klien Ke Kantor PPAT',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Secara umum untuk keperluan pembuatan Akta-Akta PPAT seperti: Akta Jual Beli, Akta Hibah, Akta Pembagian Hak Bersama, Akta Inbreng, Akta Pemberian Hak Tanggungan, Akta Waris, persyaratan awal yang harus disiapkan oleh Klien untuk persiapan Pemberkasan dan Permohonan ke Kantor Pertanahan (BPN) adalah:',
                  ),
                  SizedBox(height: 10),
                  Text(
                    '- FOTOKOPI KTP (PENJUAL DAN PEMBELI).',
                  ),
                  Text(
                    '- NPWP (PENJUAL).',
                  ),
                  Text(
                    '- KK (PENJUAL DAN PEMBELI).',
                  ),
                  Text(
                    '- SURAT NIKAH (PENJUAL).',
                  ),
                  Text(
                    '- FOTOKOPI PBB TERAKHIR.',
                  ),
                  Text(
                    '- BAYAR PAJAK PPH (PENJUAL) DAN BPHTB (PEMBELI).',
                  ),
                  Text(
                    '- SURAT KUASA NOTARIL (APABILA DIKUASAKAN).',
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tambahan lain secara khusus antara lain:',
                  ),
                  Text(
                    '- Akta Inbreng:',
                  ),
                  Text(
                    '  - Keputusan RUPS Perusahaan mengenai Inbreng tersebut;',
                  ),
                  Text(
                    '  - Anggaran Dasar Perusahaan dan perubahan-perubahannya.',
                  ),
                  Text(
                    '- Akta Pemberian Hak Tanggungan:',
                  ),
                  Text(
                    '  - SKMHT (bila menggunakan SKMHT);',
                  ),
                  Text(
                    '  - Anggaran Dasar beserta perubahan-perubahannya dari Perusahaan yang menjaminkan tanahnya.',
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
