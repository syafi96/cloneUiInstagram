class BioPersonal {
  int id;
  String photoUrl, postingUrl, nama, namaPengguna, bio, data;
  bool story;
  bool checkStory;
  bool page;

  BioPersonal({
    required this.id,
    required this.photoUrl,
    required this.postingUrl,
    required this.nama,
    required this.namaPengguna,
    required this.bio,
    required this.story,
    required this.checkStory,
    required this.page,
    required this.data,
  });
}

class Posting {
  String url;

  Posting({
    required this.url,
  });
}

class TabsHeader {
  int id;
  bool tabHeaderPersonalUser;

  TabsHeader({
    required this.id,
    required this.tabHeaderPersonalUser,
  });
}
