class DataPosting {
  int id;
  String nama;
  String photoUrl;
  String lokasi;
  String postingUrl;
  String deskripsi;
  bool story;
  bool checkStory;
  String data;

  DataPosting(
      {required this.id,
      required this.nama,
      required this.lokasi,
      required this.photoUrl,
      required this.postingUrl,
      required this.deskripsi,
      required this.story,
      required this.checkStory,
      required this.data,
      });
}
