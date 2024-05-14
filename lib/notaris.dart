import 'package:flutter/material.dart';

class NotarisPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Notaris'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // Menambahkan gambar di paling atas
            Image.asset(
              'assets/images/ppat.jpeg',
              height: 200, // Sesuaikan tinggi gambar
              width: double.infinity, // Sesuaikan lebar gambar
              fit: BoxFit.cover, // Sesuaikan gambar dengan container
            ),
            SizedBox(height: 20), // Berikan jarak antara gambar dan teks

            // Kotak dengan teks Persyaratan Pendirian PT
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Pendirian PT',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'PERSYARATAN PENDIRIAN PT:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '1. Menyiapkan 3 (tiga) pilihan nama Perusahaan. Tidak boleh dalam Bahasa lain selain Bahasa Indonesia. Tiap nama harus terdiri dari 3 suku kata.',
                  ),
                  Text(
                    '2. Fotokopi KTP dan NPWP Pendiri/Pemegang Saham.',
                  ),
                  Text(
                    '3. Surat Keterangan Sewa Kantor dan fotokopi IMB (bila kantor berbentuk ruko) *wilayah kabupaten/kotamadya lokasi kantor akan dipakai sebagai Domisili Perusahaan pada Anggaran Dasar.',
                  ),
                  Text(
                    '4. Email Perusahaan (mohon disiapkan).',
                  ),
                  Text(
                    '5. Nomor telepon salah satu Direksi penanggung jawab/Dirut/Nomor telepon Perusahaan.',
                  ),
                  Text(
                    '6. Menentukan besaran Modal Dasar Perusahaan *lihat keterangan mengenai Modal Dasar di bawah.',
                  ),
                  Text(
                    '7. Menentukan besaran Modal Disetor, Minimum 25% dari Modal Dasar.',
                  ),
                  Text(
                    '8. Menentukan besaran prosentase saham yang dimiliki masing-masing pemegang saham, dihitung dari besaran Modal Disetor.',
                  ),
                  Text(
                    '9. Menentukan Nama-nama Pengurus PT yaitu: Dewan Direksi dan Dewan Komisaris.',
                  ),
                  Text(
                    '10. Pemegang saham boleh merangkap mengisi jabatan sebagai Direktur atau Komisaris. Tapi satu orang tidak boleh menjabat menjadi Direktur sekaligus Komisaris.',
                  ),
                  Text(
                    '11. Menentukan Modal Dasar berdasarkan ketentuan mengenai SIUP:',
                  ),
                  Text(
                    '    - PT di bidang SIUP umum maupun jasa:',
                  ),
                  Text(
                    '      - SIUP mikro min. Rp. 50.000.000,-.',
                  ),
                  Text(
                    '      - SIUP kecil 51.000.000,- s/d Rp. 500.000.000,-.',
                  ),
                  Text(
                    '      - SIUP Menengah Rp. 501.000.000,- s/d Rp. 10 M.',
                  ),
                  Text(
                    '      - SIUP Besar ≥ 10 M.',
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
