import 'package:flutter/material.dart';
import 'package:my_ui/event_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,  // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text('News Feed'),
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                // TODO: Fungsinya untuk refresh data, belum diperlukan karena masih pake dummy data
                // Kalau udah pake API, bisa diimplementasiin
              },
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48),
            child: Column(
              children: const [
                TabBar(
                  tabs: [
                    Tab(text: 'SIAK-NG'),
                    Tab(text: 'SCELE'),
                    Tab(text: 'Tanggal Penting'),
                  ],
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            // Urutan sesuai index tab
            Center(
              child: Text('SIAK-NG'),
            ),
            Center(
              child: Text('SCELE'),
            ),
            EventList(),
          ],
        ),
      ),
    );
  }
}
