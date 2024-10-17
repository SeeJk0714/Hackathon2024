class LeaderboardDetail {
  String image;
  String name;
  String rank;
  int point;

  LeaderboardDetail(
      {required this.image,
      required this.name,
      required this.rank,
      required this.point});
}

List<LeaderboardDetail> userItems = [
  LeaderboardDetail(
    image: "images/e.jpg",
    name: "Siti",
    rank: "4 ",
    point: 3000,
  ),
  LeaderboardDetail(
    image: "images/f.jpg",
    name: "Ahmad",
    rank: "5 ",
    point: 2990,
  ),
  LeaderboardDetail(
    image: "images/g.jpg",
    name: "Abuu",
    rank: "6 ",
    point: 2900,
  ),
  LeaderboardDetail(
    image: "images/h.jpg",
    name: "Avlin",
    rank: "7 ",
    point: 2870,
  ),
  LeaderboardDetail(
    image: "images/i.jpg",
    name: "Rex",
    rank: "8 ",
    point: 2800,
  ),
  LeaderboardDetail(
    image: "images/j.jpg",
    name: "Horace",
    rank: "9 ",
    point: 2600,
  ),
  LeaderboardDetail(
    image: "images/k.jpg",
    name: "Ah Kao",
    rank: "15 ",
    point: 2200,
  ),
];
