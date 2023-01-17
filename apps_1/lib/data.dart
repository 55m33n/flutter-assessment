class User {
  String? name;
  String? email;
  String? img;
  User({this.name, this.email, this.img});
}

class Data {
  static final users = <User>[
    User(
      name: "Darlene Steward",
      email: "darlene.steward7@gmail.com",
      img: "assets/kw.jpg",
    ),
    User(
      name: "Fullsnack Designers",
      email: "darlene.steward7@gmail.com",
      img: "assets/ec.png",
    ),
    User(
      name: "Lee Williamson",
      email: "darlene.steward7@gmail.com",
      img: "assets/f.jpg",
    ),
    User(
      name: "Ronald Mccoy",
      email: "darlene.steward7@gmail.com",
      img: "assets/a.jpg",
    ),
    User(
      name: "Albert Bell",
      email: "darlene.steward7@gmail.com",
      img: "assets/am.jpg",
    ),
  ];
}
