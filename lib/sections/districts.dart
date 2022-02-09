import 'dart:ui';

import 'package:flutter/material.dart';

class DistrictsList extends StatefulWidget {
  const DistrictsList({Key? key}) : super(key: key);

  @override
  State<DistrictsList> createState() => _DistrictsListState();
}

class _DistrictsListState extends State<DistrictsList> {
  List<String> images = [
    "assets/images/idukki.jpg",
    "assets/images/ernakulam.jpg",
    "assets/images/alappuzha.jpg",
    "assets/images/wayanad.jpg",
    "assets/images/pathanamthitta.jpg",
    "assets/images/kannur.jpg",
    "assets/images/thrissur.jpg",
    "assets/images/kozhikode.jpg",
    "assets/images/thiruvananthapuram.jpg",
    "assets/images/kottayam.jpg",
    "assets/images/palakad.jpg",
    "assets/images/kollam.jpg",
    "assets/images/malappuram.jpg",
    "assets/images/kasargod.jpg"
  ];

  List<String> title = [
    "Idukki",
    "Ernakulam",
    "Alappuzha",
    "Wayanad",
    "Pathanapuram",
    "Kannur",
    "Thrissur",
    "Kozhikode",
    "Thrivandrum",
    "Kottayam",
    "Palakad",
    "kollam",
    "Malappuram",
    "Kasaragod"
  ];

  List<String> description = [
    "High altitude plateau with rugged mountainous terrain, several river valleys and deep gorges.",
    "lowland, midland, and the highland that consist of seaboard, plains, and hills and forests respectively.",
    "Rice bowl of Kerala, with its paddy fields, small streams and canals with lush green coconut palms.",
    "Wayanad district lies in Bayalu Seeme region (highland) of Nilgiri Biosphere Reserve. ",
    "Where the hills are tall and covered with thick forests. ",
    "The rock-cut caves and megalithic burial sites of the Neolithic age are situated.",
    "The city geologically is composed of Archaean gneisses and crystalline schists.",
    "District of Kerala state, on the southwest coast of India",
    "Several landmarks with regards to ancient tradition, folklore, and literature.",
    "Has a network of rivers, backwaters, ancient religious places, and hill stations.",
    "Which lies on the northern bank of the River Bharathappuzha,",
    "Natural attributes,it is endowed with a long coastline, major Laccadive Sea seaport and an inland lake",
    "Remains of pre-historic symbols including Dolmens,Menhirs, and Rock-cut caves",
    "Was part of Puzhinadu which consists of the coastal belt from Kozhikode to Mangalore."
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: images.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  title[index],
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Expanded(
                  child: Text(
                    description[index],
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        decorationColor: Colors.grey[300], fontSize: 10),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
