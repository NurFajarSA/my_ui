import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(232),
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
      body: const TabBarView(
        children: [
          Center(
            child: Text('SIAK-NG'),
          ),
          Center(
            child: Text('SCELE'),
          ),
          Center(
            child: Text('Tanggal Penting'),
          ),
        ],
      ),
    );
  }
}
