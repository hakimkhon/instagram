import 'package:instagram/models/intagram_model.dart';

class MockData{
static List<IntagramModel> instagram = [
    IntagramModel(
      nicName: "alpo_mish",
      aboutUser: about,
      numberOfPosts: 4,
      image: "alpomish",
    ),
    IntagramModel(
      nicName: "craig_love",
      aboutUser: about,
      numberOfPosts: 4,
      image: "craig_love",
    ),
    IntagramModel(
      nicName: "zack_john",
      aboutUser: about,
      numberOfPosts: 4,
      image: "zackjohn",
    ),
    IntagramModel(
      nicName: "kieron_d",
      aboutUser: about,
      numberOfPosts: 4,
      image: "kieron_d",
    ),
    IntagramModel(
      nicName: "karen_na",
      aboutUser: about,
      numberOfPosts: 4,
      image: "karenna",
    ),
    IntagramModel(
      nicName: "ferricha",
      aboutUser: about,
      numberOfPosts: 4,
      image: "ferrari",
    ),
  ];
  static String about =
      "Digital goodies designer @pixsellz Everything is designed.";
}