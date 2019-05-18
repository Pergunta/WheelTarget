import 'package:flutter_uikit/model/post.dart';

class PostViewModel {
  List<Post> postItems;

  PostViewModel({this.postItems});

  getPosts() => <Post>[
        Post(
            personName: "Not Renault",
            address: "California",
            likesCount: 100,
            commentsCount: 10,
            message:
                "1ª Feira Digital Renault",
            personImage:
                "https://c8.alamy.com/compes/d4hax2/icono-simbolo-distintivo-logo-de-renault-d4hax2.jpg",
            messageImage:
                "https://tribunadejundiai.com.br/noticias/images/2017/automoveis/11-nov/Feirao-da-Renault-Valec-em-Jundiai-tem-ofertas--taxa-zero-e-IPVA-grtis.jpg",
            postTime: "Just Now"),
        Post(
            personName: "Wheel Target",
            address: "California",
            likesCount: 123,
            commentsCount: 78,
            messageImage:
                "https://st3.depositphotos.com/1955233/16815/i/1600/depositphotos_168157052-stock-photo-bmw-stand-on-display.jpg",
            message:
                "This weekend only FREE shipping for all BMWs",
            personImage:
                "https://cdn1.vectorstock.com/i/1000x1000/89/60/old-wooden-wheel-vector-1408960.jpg",
            postTime: "5h ago"),
        Post(
            personName: "Jack",
            address: "California",
            likesCount: 23,
            commentsCount: 4,
            messageImage:
                "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/images/car-reviews/first-drives/legacy/2084.jpg?itok=SnByTHBw",
            message:
                "Hyundai Tucson 1.6 CRDi N-Line 2019 review",
            personImage:
                "https://cdn.pixabay.com/photo/2016/04/01/09/51/actor-1299629_960_720.png",
            postTime: "3h ago"),
        Post(
            personName: "Neha",
            address: "California",
            likesCount: 35,
            commentsCount: 2,
            messageImage:
                "https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/teaser_large_270/public/images/car-reviews/first-drives/legacy/dsc_7121.jpg?itok=306TzjVD",
            message:
                "Are semi-autonomous systems making cars safer?",
            personImage:
                "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
            postTime: "1d ago"),
        Post(
            personName: "Pawan",
            address: "New Delhi, India",
            likesCount: 100,
            commentsCount: 10,
            message:
                "Google Developer Expert for Flutter. Passionate #Flutter, #Android Developer. #Entrepreneur #YouTuber",
            personImage:
                "https://avatars0.githubusercontent.com/u/12619420?s=460&v=4",
            messageImage:
                "https://cdn.pixabay.com/photo/2018/03/09/16/32/woman-3211957_1280.jpg",
            postTime: "Just Now"),
        Post(
            personName: "Eric",
            address: "California",
            likesCount: 50,
            commentsCount: 5,
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2013/07/18/20/24/brad-pitt-164880_960_720.jpg",
            postTime: "2h ago"),
        Post(
            personName: "Jack",
            address: "California",
            likesCount: 23,
            commentsCount: 4,
            messageImage:
                "https://cdn.pixabay.com/photo/2014/09/07/16/53/hands-437968_960_720.jpg",
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2016/04/01/09/51/actor-1299629_960_720.png",
            postTime: "3h ago"),
        Post(
            personName: "Amanda",
            address: "Canada",
            likesCount: 123,
            commentsCount: 78,
            messageImage:
                "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2016/04/10/21/34/woman-1320810_960_720.jpg",
            postTime: "5h ago"),
        Post(
            personName: "Neha",
            address: "Punjab",
            likesCount: 35,
            commentsCount: 2,
            messageImage:
                "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
            message:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            personImage:
                "https://cdn.pixabay.com/photo/2015/11/26/00/14/fashion-1063100_960_720.jpg",
            postTime: "1d ago"),
      ];
}