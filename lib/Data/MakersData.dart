//this if file that contain the data of the Makers list
//this file is used in the Makers code

class MakersData{
  late final String image,name;
  late final int id;

  MakersData({
    required this.id,
    required this.image,
    required this.name,
});
}

List<MakersData> make=[
  MakersData(id: 1,
      image: "assets/pic/sj.jpg",
      name: "Shivaji"
  ),
  MakersData(id: 2,
      image: "assets/pic/sj.jpg",
      name: "Shivaji"
  ),
  MakersData(id: 3,
      image: "assets/pic/sj.jpg",
      name: "Shivaji"
  ),
  MakersData(id: 4,
      image: "assets/pic/sj.jpg",
      name: "Shivaji"
  ),
  MakersData(id: 5,
      image: "assets/pic/sj.jpg",
      name: "Shivaji"
  ),
  MakersData(id: 6,
      image: "assets/pic/omar k.jpeg",
      name: "Omar Khayyam"
  ),
];