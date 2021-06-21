import 'package:flutter/material.dart';
//this if file that contain the data of the tour package
//this file is used in the TourCard code

class TourData {
  late final String imageA,imageB,imageC,title,details,time,placeName,price;
  late final int id,activities;

  TourData({
    //this required keyword is  new feature of AD
    required this.id,
    required this.imageA,
    required this.imageB,
    required this.imageC,
    required this.title,
    required this.placeName,
    required this.details,
    required this.time,
    required this.activities,
    required this.price
});

}

//details that needed to entered
List<TourData> tours=[
  TourData(
      id: 1,
      imageA: "assets/pic/VMK.jpg",
      imageB: "assets/pic/vkma.jpg",
      imageC: "assets/pic/vmkb.webp",
      title: "A walk through art of hallway",
      placeName: "Victoria Memorial Kolkata",
      details: " The Victoria Memorial that was built to commemorate Queen Victoria, today serves as a grand museum and a verdant, tranquil refuge for leisure hours. The grand white monument, with its immaculate architecture, a huge collection of art, and pride of place is a must-visit on your trip to the City of Joy! "
          "Lord Curzon, the Viceroy of India from 1899 to 1905, proposed the idea of the Victoria Memorial to pay tribute to Queen Victoria after the British Empress’ death in 1901. William Emerson, the eminent British architect, laid out the plan for the memorial that ultimately opened its doors in 1921. And, what a remarkable memorial it turned out to be! "
          "The structure, designed in the Indo-Saracenic revival style, is built with white Makrana marbles sourced from Jaipur, Rajasthan. The pristine monument is a melting pot of Islamic, Deccan, British, Venetian and Egyptian architectural elements that will leave you awestruck. Look out for the dome of the Victoria Memorial, which is a treasure trove of intricate sculptures. "
          "It houses emblematic figures of art, charity, justice and architecture. The north porch of the monument is home to the sculptures of learning, motherhood and prudence. And at the top of the dome, there is the notable bronze statue of Nike, the Angel of Victory."
          "The Victoria Memorial stands tall in the middle of 21 expansive lush green gardens that cover an area of about 64 acres. The gardens are always laced with the sweet aroma and vibrant colours of seasonal flowers along with fountains and lakes. "
    ,
      time: "10:00",
      activities: 11,
      price:"Rs 180",
  ),
  TourData(
    id: 2,
    imageA: "assets/pic/VMK.jpg",
    imageB: "assets/pic/vkma.jpg",
    imageC: "assets/pic/vmkb.webp",
    title: "A walk through art of hallway",
    placeName: "Victoria Memorial Kolkata",
    details: " The Victoria Memorial that was built to commemorate Queen Victoria, today serves as a grand museum and a verdant, tranquil refuge for leisure hours. The grand white monument, with its immaculate architecture, a huge collection of art, and pride of place is a must-visit on your trip to the City of Joy! "
        "Lord Curzon, the Viceroy of India from 1899 to 1905, proposed the idea of the Victoria Memorial to pay tribute to Queen Victoria after the British Empress’ death in 1901. William Emerson, the eminent British architect, laid out the plan for the memorial that ultimately opened its doors in 1921. And, what a remarkable memorial it turned out to be! "
        "The structure, designed in the Indo-Saracenic revival style, is built with white Makrana marbles sourced from Jaipur, Rajasthan. The pristine monument is a melting pot of Islamic, Deccan, British, Venetian and Egyptian architectural elements that will leave you awestruck. Look out for the dome of the Victoria Memorial, which is a treasure trove of intricate sculptures. "
        "It houses emblematic figures of art, charity, justice and architecture. The north porch of the monument is home to the sculptures of learning, motherhood and prudence. And at the top of the dome, there is the notable bronze statue of Nike, the Angel of Victory."
        "The Victoria Memorial stands tall in the middle of 21 expansive lush green gardens that cover an area of about 64 acres. The gardens are always laced with the sweet aroma and vibrant colours of seasonal flowers along with fountains and lakes. "
    ,
    time: "10:00",
    activities: 11,
    price:"Rs 180",
  ),
];