class Event {
  final String title;
  final String description;
  final String date;
  final String location;
  final int totalDay;

  Event({
    required this.title,
    required this.description,
    required this.date,
    required this.location,
    required this.totalDay,
  });
}

// TODO: Sesuaikan data dummy dengan kebutuhan
List<Event> dummyData = [
  Event(
      title: "Registrasi Akademik",
      description: "description",
      date: "19 Mei 2017-01 Juni 2017 ",
      location: "(Universitas Indonesia)",
      totalDay: 14),
  Event(
      title: "Registrasi Akademik",
      description: "description",
      date: "24 Mei 2017-1 Juni 2017 ",
      location: "(Program Studi S1 Paralel Ilmu Komputer)",
      totalDay: 9),
  Event(
      title: "Lain-lain",
      description: "description",
      date: "02 Juni 2017-02 Juni 2017 ",
      location: "(Program Studi S1 Paralel Ilmu Komputer)",
      totalDay: 1),
  Event(
      title: "Masa Drop IRS",
      description: "description",
      date: "02 Juni 2017-04 Juni 2017 ",
      location: "(Program Studi S1 Paralel Ilmu Komputer)",
      totalDay: 3),
  Event(
      title: "Registrasi Administrasi",
      description: "description",
      date: "04 Juni 2017-18 Juni 2017 ",
      location: "(Universitas Indonesia)",
      totalDay: 14),
];
