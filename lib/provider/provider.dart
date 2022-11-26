// ignore_for_file: unnecessary_null_comparison

import 'package:clone_ui_instragram/widget/post/data_storypage.dart';
import 'package:flutter/cupertino.dart';

import '../models/data_personaluser.dart';
import '../models/data_posting.dart';
import '../widget/personal_user/add_strorypersonalwidget.dart';
import '../widget/personal_user/new_storypersonal.dart';

class System with ChangeNotifier {
  String url = 'default';

  //DataFriend
  final List<DataPosting> _dataposting = [
    DataPosting(
        id: 1,
        nama: 'andi_89',
        lokasi: 'Semarang, Jawa Tengah',
        photoUrl: 'https://i.pravatar.cc/150?img=13',
        postingUrl:
            'https://i.picsum.photos/id/523/400/500.jpg?hmac=ICnEI4oD_ewucpe0VO0oeQVwMi7YpTZ7HcSMfNV687c',
        deskripsi: 'Liburan dulu guys',
        story: true,
        checkStory: false,
        data: 'Friends'),
    DataPosting(
        id: 2,
        nama: 'bastian',
        lokasi: 'Semarang, Jawa Tengah',
        photoUrl: 'https://i.pravatar.cc/150?img=48',
        postingUrl:
            'https://i.picsum.photos/id/248/400/500.jpg?hmac=EP7uLbgHpGlWgBw3OOgWk-_CsaHnqmth7nEpmu2ieGA',
        deskripsi: 'seperti kamu yang indah untuk dipandang saja',
        story: false,
        checkStory: false,
        data: 'Friends'),
    DataPosting(
        id: 3,
        nama: 'luki01',
        lokasi: 'Magelang, Jawa Tengah',
        photoUrl: 'https://i.pravatar.cc/150?img=5',
        postingUrl:
            'https://i.picsum.photos/id/182/400/500.jpg?hmac=8adqesYaM8X86ABikIt16bZA8SrX-IKtqr2UgQwPoig',
        deskripsi: 'otewe adoh pokok.e',
        story: true,
        checkStory: false,
        data: 'Friends'),
    DataPosting(
        id: 4,
        nama: 'santi',
        lokasi: 'Surabaya, Jawa Timur',
        photoUrl: 'https://i.pravatar.cc/150?img=32',
        postingUrl:
            'https://i.picsum.photos/id/275/400/500.jpg?hmac=jvZK0grjnsR2G061_X7SpyUfrD6weZIbXuWvgRVnC0c',
        deskripsi: 'Terbang bebas lah kamu dan melihat ke indahan dunia',
        story: true,
        checkStory: false,
        data: 'Friends'),
    DataPosting(
        id: 5,
        nama: 'widi',
        lokasi: 'Daerah Istimewa Yogyakarta',
        photoUrl: 'https://i.pravatar.cc/150?img=19',
        postingUrl:
            'https://i.picsum.photos/id/1068/400/500.jpg?hmac=zdcfT9lNwhamvB0xu458WPaLkn6_EFYBN4F0Vh6SQGo',
        deskripsi: 'iseng jepret',
        story: false,
        checkStory: false,
        data: 'Friends'),
    DataPosting(
        id: 6,
        nama: 'firman',
        lokasi: 'Daerah Istimewa Yogyakarta',
        photoUrl: 'https://i.pravatar.cc/150?img=14',
        postingUrl:
            'https://i.picsum.photos/id/894/400/500.jpg?hmac=OtjHj5uAu9V0hZphTMosqa-boJPYp0L7YH--UyMn0Ng',
        deskripsi: 'pada kemana woy',
        story: true,
        checkStory: false,
        data: 'Friends'),
    DataPosting(
        id: 7,
        nama: 'lukas',
        lokasi: 'Daerah Istimewa Yogyakarta',
        photoUrl: 'https://i.pravatar.cc/150?img=49',
        postingUrl:
            'https://i.picsum.photos/id/180/400/500.jpg?hmac=r6lZM55hSsncG4diljy_EZ9TNN0JlVYbdvCh-xV_ztU',
        deskripsi: 'kudu Strong',
        story: true,
        checkStory: false,
        data: 'Friends'),
    DataPosting(
        id: 8,
        nama: 'ahmad_11',
        lokasi: 'Jakarta Barat',
        photoUrl: 'https://i.pravatar.cc/150?img=61',
        postingUrl:
            'https://i.picsum.photos/id/505/400/500.jpg?hmac=MoO-uv_5rLC-kpFKcOIhUfIowrh5LvUhxHPSIHwG2-A',
        deskripsi: 'Senja tau bagaimana ia pamitan dengan cara yang berkesan.',
        story: false,
        checkStory: false,
        data: 'Friends'),
    DataPosting(
        id: 9,
        nama: 'tejo',
        lokasi: 'Surabaya, Jawa Timur',
        photoUrl: 'https://i.pravatar.cc/150?img=25',
        postingUrl:
            'https://i.picsum.photos/id/892/400/500.jpg?hmac=TVprqcDQhC9Q1c_Ke1V_QTa9uyLdumKa42U5eOvUbus',
        deskripsi: 'clasic',
        story: true,
        checkStory: false,
        data: 'Friends'),
    DataPosting(
        id: 10,
        nama: 'silvi_A',
        lokasi: 'Denpasar, Bali',
        photoUrl: 'https://i.pravatar.cc/150?img=28',
        postingUrl:
            'https://i.picsum.photos/id/162/400/500.jpg?hmac=8rioSukjVRme7EL4PSxzNFfPmzjUvVTilnTgUZ96xuE',
        deskripsi: 'view lokasi dari atas langit',
        story: true,
        checkStory: false,
        data: 'Friends'),
  ];

  List<DataPosting> get dataPosting => _dataposting;

  final List<BioPersonal> _bioPersonal = [
    BioPersonal(
      id: 0,
      photoUrl: 'https://i.pravatar.cc/150?img=58',
      postingUrl:
          'https://img-19.commentcamarche.net/cI8qqj-finfDcmx6jMK6Vr-krEw=/1500x/smart/b829396acc244fd484c5ddcdcb2b08f3/ccmcms-commentcamarche/20494859.jpg',
      nama: 'Syafi_Praba',
      namaPengguna: 'syafi praba',
      bio: 'Content Creator',
      story: true,
      checkStory: false,
      page: true,
      data: 'MyUser',
    )
  ];
  List<BioPersonal> get bioPersonal => _bioPersonal;
  //feed instagram List
  final List<Widget> _storyFeed = [];
  List<Widget> get storyFeed => _storyFeed;

  void storyFeeds(
      int id,
      String nama,
      String photoUrl,
      String postingUrl,
      bool story,
      bool checkStory,
      bool page,
      String data,
      BuildContext context) {
    BioPersonal dataBio = bioPersonal.firstWhere((element) => element.id == 0);

    if (dataBio.data == data) {
      storyFeed.add(
        DataStoryPage(
          id: id.toString(),
          photoUrl: photoUrl,
          nama: nama,
          checkStory: checkStory,
          page: page,
          data: data,
        ),
      );
    } else {
      storyFeed.add(
        DataStoryPage(
          id: id.toString(),
          photoUrl: photoUrl,
          nama: nama,
          checkStory: checkStory,
          page: page,
          data: data,
        ),
      );
    }
    notifyListeners();
  }

  // Personal User LIst

  final List<TabsHeader> _tabsHeader = [
    TabsHeader(
      id: 1,
      tabHeaderPersonalUser: false,
    ),
  ];

  final List<Widget> _storyPersonalUser = [const AddStoryPersonalWidget()];

  final List<Posting> _fotoGrid = [
    Posting(url: 'https://i.pravatar.cc/150?img=14'),
    Posting(url: 'https://i.pravatar.cc/150?img=65'),
    Posting(url: 'https://i.pravatar.cc/150?img=50'),
    Posting(url: 'https://i.pravatar.cc/150?img=40'),
    Posting(url: 'https://i.pravatar.cc/150?img=47'),
    Posting(url: 'https://i.pravatar.cc/150?img=1'),
    Posting(url: 'https://i.pravatar.cc/150?img=3'),
    Posting(url: 'https://i.pravatar.cc/150?img=5'),
    Posting(url: 'https://i.pravatar.cc/150?img=15'),
    Posting(url: 'https://i.pravatar.cc/150?img=18'),
    Posting(url: 'https://i.pravatar.cc/150?img=23'),
    Posting(url: 'https://i.pravatar.cc/150?img=49'),
    Posting(url: 'https://i.pravatar.cc/150?img=12'),
    Posting(url: 'https://i.pravatar.cc/150?img=22'),
    Posting(url: 'https://i.pravatar.cc/150?img=42'),
    Posting(url: 'https://i.pravatar.cc/150?img=62'),
    Posting(url: 'https://i.pravatar.cc/150?img=60'),
  ];

  List<TabsHeader> get tabsHeader => _tabsHeader;

  List<Posting> get fotoGrid => _fotoGrid;

  List<Widget> get storyPersonalUser => _storyPersonalUser;
  // Feed instagram Validasi

  // Personal User Valdasi
  void editBio(String? url, String? nama, String? namaPengguna, String? bio,
      BuildContext context) {
    BioPersonal editBio = bioPersonal.firstWhere((element) => element.id == 0);

    if (nama == null && namaPengguna == null && bio == null) {
      editBio.photoUrl = url!;
      for (var i in dataPosting) {
        if (i.id == 0) {
          i.photoUrl = url;
        }
      }
      //editBio.nama = editBio.nama;
      // editBio.namaPengguna = editBio.namaPengguna;
      // editBio.bio = editBio.bio;
    } else if (url == null && namaPengguna == null && bio == null) {
      editBio.nama = nama!;
      for (var i in dataPosting) {
        if (i.id == 0) {
          i.nama = nama;
        }
      }
    } else if (url == null && nama == null && bio == null) {
      editBio.namaPengguna = namaPengguna!;
    } else if (url == null && nama == null && namaPengguna == null) {
      editBio.bio = bio!;
    } else {
      editBio.photoUrl = url!;
      editBio.nama = nama!;
      editBio.namaPengguna = namaPengguna!;
      editBio.bio = bio!;
    }

    notifyListeners();
  }

  void editTabsHeader(double id, bool tabPersonalUser, BuildContext context) {
    TabsHeader editTabs = tabsHeader.firstWhere((element) => element.id == id);
    editTabs.tabHeaderPersonalUser = tabPersonalUser;

    notifyListeners();
  }

  void addFotoGrid(String url, BuildContext context) {
    BioPersonal data = bioPersonal.firstWhere((element) => element.id == 0);
    var index = 0;
    _fotoGrid.insert(
      index,
      Posting(url: url),
    );

    _dataposting.insert(
      index,
      DataPosting(
        id: 0,
        nama: data.nama,
        lokasi: 'Purworejo',
        photoUrl: data.photoUrl,
        postingUrl: url,
        deskripsi: 'hehehehe',
        story: data.story,
        checkStory: data.checkStory,
        data: data.data,
      ),
    );

    notifyListeners();
  }

  void addStoryPersonal(String url, String deskripsi, BuildContext context) {
    var index = 0;
    _storyPersonalUser.insert(
      index,
      NewStoryPersonal(
        url: url,
        deskripsi: deskripsi,
      ),
    );

    notifyListeners();
  }

  // ignore: non_constant_identifier_names
  Future<void> AmbilData(String id) async {
     await Future.delayed(const Duration(milliseconds: 300));
    BioPersonal data = bioPersonal.firstWhere((element) => element.id == 0);
    var newId = int.parse(id.toString());

    for (var i in dataPosting) {
      if (newId == 0) {
        url =  data.postingUrl;
        break;
      } else if (i.id == newId && i.story == true && newId > 0) {
        url =  i.postingUrl;
        break;
      }
    }

    notifyListeners();
  }
}
