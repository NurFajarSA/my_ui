import 'package:flutter/material.dart';
import 'package:my_ui/dummy_data.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key, required this.indexData});
  // Menerima index data event
  final int indexData;

  @override
  Widget build(BuildContext context) {
    // Get data from dummy_data.dart
    Event event = dummyData[indexData];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Detail'),
      ),

      // TODO: Kreasikan widget untuk menampilkan detail event
      body: Center(
        child: Column(
          children: [
            Text(event.title),
            Text(event.location),
            Text(event.date),
            Text(event.description),
          ],
        ),
      ),
    );
  }
}
