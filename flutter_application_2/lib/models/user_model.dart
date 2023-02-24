import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> imageUrls;
  final String bio;
  final String jobTitle;
  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.imageUrls,
    required this.bio,
    required this.jobTitle,
  });

  @override
  List<Object?> get props => [id, name, age, imageUrls, bio, jobTitle];

  static List<User> users = [
    const User(
      id: 1,
      name: 'Θανάσης Ροντοβρόντο',
      age: 35,
      imageUrls: [
        'https://www.ece.ntua.gr/media/656/image_61ea95203d025.pnghttps://scontent.fath4-2.fna.fbcdn.net/v/t1.15752-9/332045723_1308580253038880_4134032364263244515_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=ae9488&_nc_ohc=qq5f_vYpBlwAX8uU_HY&_nc_ht=scontent.fath4-2.fna&oh=03_AdT02F555cJgxfBP2lcy0DV1xcdCe2VtclA5fykUNEctIw&oe=641F2EDA',
        'https://members.noa.gr/tronto/IMG_4877.JPG',
        'https://www.astro.noa.gr/wp-content/uploads/2020/01/%CE%A1%CE%BF%CE%BD%CF%84%CE%BF%CE%B3%CE%B9%CE%B1%CC%81%CE%BD%CE%BD%CE%B7%CF%82-%CE%91%CE%B8%CE%B1%CE%BD%CE%B1%CC%81%CF%83%CE%B9%CE%BF%CF%82.jpg',
        'https://scontent.fath3-4.fna.fbcdn.net/v/t1.15752-9/329854868_871142877299324_3885181097965937951_n.png?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_ohc=TKeavN7jT4gAX-wT6TF&_nc_ht=scontent.fath3-4.fna&oh=03_AdTmq80nAGKsMprjk8o95rrviTyutXiCEE8_leGrySJ5aA&oe=641C1298',
      ],
      jobTitle: 'Ειδικός στις μεγάλες διαδρομές',
      bio: ' ',
    ),
    const User(
      id: 2,
      name: 'Πιπεράκος Ελ Τρούκο',
      age: 50,
      imageUrls: [
        'https://scontent.fath4-2.fna.fbcdn.net/v/t1.15752-9/332045723_1308580253038880_4134032364263244515_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=ae9488&_nc_ohc=qq5f_vYpBlwAX8uU_HY&_nc_ht=scontent.fath4-2.fna&oh=03_AdT02F555cJgxfBP2lcy0DV1xcdCe2VtclA5fykUNEctIw&oe=641F2EDAhttps://i.ytimg.com/vi/TJrJwBJt9TI/hqdefault.jpg',
        'https://clips-media-assets2.twitch.tv/36157322960-offset-3022-preview-480x272.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROkwhsnRpumA3_SYfzo6VUY13EI3v9tUhV5Q&usqp=CAU',
        'https://img.youtube.com/vi/FhoyJEpCc8Q/hqdefault.jpg',
      ],
      jobTitle: 'Ολύμπου 15 Χαλάνδρι',
      bio: ' ',
    ),
    const User(
      id: 3,
      name: 'Πιπεράκος Ελ Τρούκο',
      age: 50,
      imageUrls: [
        'https://i.ytimg.com/vi/TJrJwBJt9TI/hqdefault.jpg',
        'https://clips-media-assets2.twitch.tv/36157322960-offset-3022-preview-480x272.jpg',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROkwhsnRpumA3_SYfzo6VUY13EI3v9tUhV5Q&usqp=CAU',
        'https://img.youtube.com/vi/FhoyJEpCc8Q/hqdefault.jpg',
      ],
      jobTitle: 'Ολύμπου 15 Χαλάνδρι',
      bio: ' ',
    ),
    const User(
      id: 4,
      name: 'Μπζάλτης Μπατζουκέλι',
      age: 22,
      imageUrls: [
        'https://scontent.fath4-2.fna.fbcdn.net/v/t1.15752-9/329207882_1263448644266728_5967931583784560459_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_ohc=-EvwYMhN4E0AX-dQFnR&_nc_ht=scontent.fath4-2.fna&oh=03_AdQ2tAzoV4dcfqc5KdYgdXBMbNA5RAdhxbujHAcKgZXQ9g&oe=641DB179',
        'https://scontent.fath4-2.fna.fbcdn.net/v/t1.15752-9/328976575_1180240526187561_6923783258315904136_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=ae9488&_nc_ohc=aCjhL5rjf7EAX9tg_eP&_nc_oc=AQkUaQwlYpSvqopBIilhdfiRl6BnGOaJq2W5Hs9j0oaSjXsNdfhb45rmD7JVeKU2v5UH_zqqgFv1zm7kuVznjj4H&_nc_ht=scontent.fath4-2.fna&oh=03_AdS6-mj3QrbidnzdG507fl9puiQgilAj8zirY6uTap9wBQ&oe=641DC388',
        'https://scontent.fath4-2.fna.fbcdn.net/v/t1.15752-9/328056071_1618533838633397_2263145873557040280_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=ae9488&_nc_ohc=tGX7Y4NQIF4AX_auccN&_nc_ht=scontent.fath4-2.fna&oh=03_AdSUzXgqu4_4rSMGmyBhaMwIHUKW9wTJmqnXvkRvcMEh_g&oe=641DA529',
        'https://scontent.fath4-2.fna.fbcdn.net/v/t1.15752-9/328939891_3038773886427984_8337213805709177626_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=ae9488&_nc_ohc=zayoorB2bIAAX-51Apt&_nc_ht=scontent.fath4-2.fna&oh=03_AdSiwjl0o18lAOTo-mPOb5iUF9u0GlCRWIigKg82ByS2SA&oe=641DBF21',
      ],
      jobTitle: 'Έτοιμος για κόλπα ;)',
      bio: ' ',
    ),
    const User(
      id: 5,
      name: 'Φοίβος Λα Κροκέτ',
      age: 22,
      imageUrls: [
        'https://scontent.fath4-2.fna.fbcdn.net/v/t1.15752-9/332240958_1205928890294135_8824039372882581612_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=ae9488&_nc_ohc=LVIZWkMBXJ8AX9W_Z4U&_nc_ht=scontent.fath4-2.fna&oh=03_AdSCWMV8RDYL-5gFRKDjX3cvVbuv4KpBcKv8s7HrQZS0Gg&oe=641DC660',
        'https://scontent.fath4-2.fna.fbcdn.net/v/t1.15752-9/331877571_751435339941450_6215227746815357733_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_ohc=8JRZGAcekv0AX9ZU24S&_nc_ht=scontent.fath4-2.fna&oh=03_AdQaTCv3NUBsZtSKiX41nnTSHPN754UtkKuijdWerUa9PA&oe=641DA61F',
        'https://scontent.fath4-2.fna.fbcdn.net/v/t1.15752-9/332248869_675905227558333_2479997467221553809_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=ae9488&_nc_ohc=RmcmgQn50jMAX9wgmUX&_nc_ht=scontent.fath4-2.fna&oh=03_AdQyYn7GU2xNkt8YfNOGOafJI1UE-wJlwnVDrdQmffXuaQ&oe=641DC266',
        'https://scontent.fath4-2.fna.fbcdn.net/v/t1.15752-9/332091230_951928529300841_5924633515254750640_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=ae9488&_nc_ohc=fEUNwkx654oAX_79TEf&_nc_ht=scontent.fath4-2.fna&oh=03_AdT2lNWTCBbZXXO8Ul_kaf3FBFcv2QfxR6yCyZZ_VMD-fQ&oe=641DA432',
      ],
      jobTitle: 'Έτοιμος για κόλπα ;)',
      bio: ' ',
    ),
    const User(
      id: 6,
      name: 'Θανάσης Ροντοβρόντο',
      age: 35,
      imageUrls: [
        'https://www.ece.ntua.gr/media/656/image_61ea95203d025.png',
        'https://members.noa.gr/tronto/IMG_4877.JPG',
        'https://www.astro.noa.gr/wp-content/uploads/2020/01/%CE%A1%CE%BF%CE%BD%CF%84%CE%BF%CE%B3%CE%B9%CE%B1%CC%81%CE%BD%CE%BD%CE%B7%CF%82-%CE%91%CE%B8%CE%B1%CE%BD%CE%B1%CC%81%CF%83%CE%B9%CE%BF%CF%82.jpg',
        'https://scontent.fath3-4.fna.fbcdn.net/v/t1.15752-9/329854868_871142877299324_3885181097965937951_n.png?_nc_cat=103&ccb=1-7&_nc_sid=ae9488&_nc_ohc=TKeavN7jT4gAX-wT6TF&_nc_ht=scontent.fath3-4.fna&oh=03_AdTmq80nAGKsMprjk8o95rrviTyutXiCEE8_leGrySJ5aA&oe=641C1298',
      ],
      jobTitle: 'Ειδικός στις μεγάλες διαδρομές',
      bio: ' ',
    ),
  ];
}
