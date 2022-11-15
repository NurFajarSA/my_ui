import 'package:flutter/material.dart';
import 'package:my_ui/dummy_data.dart';
import 'package:my_ui/event_detail.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) {
        return Material(
          child: InkWell(
            // Fungsinya untuk membuat widget bisa di klik (ink reaction)
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EventDetail(
                            indexData: index,
                          ))); // Secara dinamis mengirimkan index data event
            },
            child: Card(
              // TODO: Bisa disesuaikan juga layoutnya
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(dummyData[index].title),
                    Text(dummyData[index].location),
                  ],
                ),
                subtitle: Text(
                    "${dummyData[index].date} | ${dummyData[index].totalDay} Hari"),
              ),
            ),
          ),
        );
      },
    );
  }
}
