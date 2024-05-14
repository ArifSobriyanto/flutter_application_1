import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/notaris.dart';
import 'package:flutter_application_1/ppat.dart';
import 'package:flutter_application_1/profil.dart';
import 'package:flutter_application_1/tentangkami.dart';

class navigasi extends StatelessWidget {
  const navigasi({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, 
      child: Scaffold(
        body: Column(
          children: [
          TabBar(tabs: [
            Tab(text: 'home',),
             Tab(text: 'profil',),
              Tab(text: 'notaris',),
               Tab(text: 'ppat',),
                Tab(text: 'tentangkami',),        
          ]),
          Expanded(
            child: TabBarView(
              children: [
                HomePage(),
                ProfilePage(),
                NotarisPage(),
                PPATPage(),
                TentangKamiPage(),
              ],))
          ],
        ),
      ),
    );
  }
}