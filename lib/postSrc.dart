class Post {
  String image;
  String name;
  String comment;
  String likes;

  Post({
    required this.comment,
    required this.image,
    required this.likes,
    required this.name,
  });
}

List<String> profileImages = [
  'assets/0.jpeg',
  'assets/1.jpeg',
  'assets/2.jpeg',
  'assets/3.jpeg',
  'assets/4.jpeg',
  'assets/5.jpeg',
  'assets/6.jpeg',
  'assets/7.jpeg',
  'assets/8.jpeg',
  'assets/1.jpeg',
  'assets/2.jpeg',
  'assets/3.jpeg',
  'assets/4.jpeg',
];
List<Post> posts = [
  Post(
      image: profileImages[0],
      likes: '30K',
      comment: '1506',
      name: 'Mahmoud Ibrahim'),
  Post(
      image: profileImages[1],
      likes: '135',
      comment: '7',
      name: 'Mostafa Ibrahim'),
  Post(
      image: profileImages[2],
      likes: '246',
      comment: '47',
      name: 'Yousef El sayed'),
  Post(
      image: profileImages[3],
      likes: '700',
      comment: '290',
      name: 'Mohamed Magdy'),
  Post(
      image: profileImages[4],
      likes: '507',
      comment: '28',
      name: 'Mohamed Adel'),
  Post(image: profileImages[5], likes: '1.1k', comment: '476', name: 'Asser'),
  Post(
      image: profileImages[6], likes: '62', comment: '3', name: 'Mahmoud Zaky'),
  Post(image: profileImages[7], likes: '218', comment: '12', name: 'Sameh'),
  Post(
      image: profileImages[8],
      likes: '148',
      comment: '7',
      name: 'Hazem Ghaith'),
  Post(
      image: profileImages[9],
      likes: '135',
      comment: '7',
      name: 'Mostafa Ibrahim'),
];
