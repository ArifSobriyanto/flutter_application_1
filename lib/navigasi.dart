import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/notaris.dart';
import 'package:flutter_application_1/ppat.dart';
import 'package:flutter_application_1/profil.dart';
import 'package:flutter_application_1/tentangkami.dart';

class Navigasi extends StatelessWidget {
  const Navigasi({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: TabBarView(
          children: [
            HomePage(),
            ProfilePage(),
            NotarisPage(),
            PPATPage(),
            TentangKamiPage(),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 110, 174, 115),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: TabBar(
            tabs: [
              Tab(
                text: 'Home',
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'Profil',
                icon: Icon(Icons.person),
              ),
              Tab(
                text: 'Notaris',
                icon: Icon(Icons.account_balance),
              ),
              Tab(
                text: 'PPAT',
                icon: Icon(Icons.business),
              ),
              Tab(
                text: 'Tentang Kami',
                icon: Icon(Icons.info),
              ),
            ],
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey[300],
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
