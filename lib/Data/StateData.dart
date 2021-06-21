//this if file that contain the data of the State list
//this file is used in the State code

class StateData{
  late final String image,name;
  late final int id;

  StateData({
    required this.id,
    required this.image,
    required this.name,
  });
}

List<StateData>states=[
  StateData(
      id: 1,
      image: "assets/pic/VMK.jpg",
      name: "HJ"
  )
];